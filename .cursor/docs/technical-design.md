# Video-Clip 智能视频剪辑平台技术方案

## 1. 整体技术架构

### 1.1 架构概览
```
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   用户浏览器     │    │   CDN/负载均衡   │    │   前端静态资源   │
└─────────────────┘    └─────────────────┘    └─────────────────┘
          │                        │                        │
          └────────────────────────┼────────────────────────┘
                                   │
┌─────────────────────────────────────────────────────────────────┐
│                        API Gateway                              │
└─────────────────────────────────────────────────────────────────┘
                                   │
          ┌────────────────────────┼────────────────────────┐
          │                        │                        │
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   用户服务       │    │   视频处理服务   │    │   任务调度服务   │
│   (FastAPI)     │    │   (Celery)      │    │   (Celery Beat)  │
└─────────────────┘    └─────────────────┘    └─────────────────┘
          │                        │                        │
          └────────────────────────┼────────────────────────┘
                                   │
┌─────────────────────────────────────────────────────────────────┐
│                        数据层                                   │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐              │
│  │   MySQL     │  │   Redis     │  │  文件存储    │              │
│  │  (业务数据)  │  │ (缓存/队列)  │  │ (视频文件)   │              │
│  └─────────────┘  └─────────────┘  └─────────────┘              │
└─────────────────────────────────────────────────────────────────┘
                                   │
┌─────────────────────────────────────────────────────────────────┐
│                        AI 服务层                               │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐              │
│  │  FunClip    │  │   FunASR    │  │   Qwen LLM  │              │
│  │ (视频剪辑)   │  │ (语音识别)   │  │ (卖点识别)   │              │
│  └─────────────┘  └─────────────┘  └─────────────┘              │
└─────────────────────────────────────────────────────────────────┘
```

### 1.2 技术栈选型

#### 前端技术栈
- **框架**: Vue 3.4+ 
- **UI组件**: Element Plus 2.4+
- **样式**: TailwindCSS 3.3+
- **状态管理**: Pinia
- **路由**: Vue Router 4
- **HTTP客户端**: Axios
- **构建工具**: Vite 5+
- **包管理**: pnpm

#### 后端技术栈
- **框架**: FastAPI 0.104+
- **Python版本**: Python 3.12+
- **异步任务**: Celery 5.3+ + Redis
- **任务调度**: Celery Beat
- **数据库**: MySQL 8.0+
- **缓存**: Redis 7.0+
- **文件存储**: 本地存储 / 阿里云OSS
- **API文档**: OpenAPI/Swagger

#### AI服务技术栈
- **视频剪辑**: FunClip (ModelScope)
- **语音识别**: FunASR (阿里云)
- **大语言模型**: Qwen-2.5-7B-Instruct
- **模型推理**: vLLM / Ollama
- **GPU支持**: CUDA 12.0+

#### 部署技术栈
- **容器化**: Docker + Docker Compose
- **Web服务器**: Nginx
- **进程管理**: Supervisor
- **监控**: Prometheus + Grafana
- **日志**: ELK Stack

## 2. FunClip 集成方案

### 2.1 FunClip 简介
FunClip (https://github.com/modelscope/FunClip) 是基于大语言模型的视频剪辑工具，能够根据文本描述自动识别和剪辑视频片段。支持用户自定义Prompt进行视频分析和剪辑。

### 2.2 集成架构
```python
# FunClip 服务封装
class FunClipService:
    def __init__(self):
        self.model = AutoModel.from_pretrained("iic/FunClip")
        self.default_prompt = """
        你是一个视频srt字幕分析剪辑器，输入视频的srt字幕，你需要依次按照钩子(电商术语)、材质介绍、穿搭效果、促成交这四个维度来筛选视频内容，并将其中的精彩且尽可能连续的片段并裁剪出来，将片段中在时间上连续的多个句子及它们的时间戳合并为一条，注意确保文字与时间戳的正确匹配。最终生成的视频长度在60s 左右。输出需严格按照如下格式：1. [开始时间-结束时间] 文本，注意其中的连接符是"-"
        """
        
    async def process_video(self, video_path: str, config: dict) -> List[VideoSegment]:
        """
        使用FunClip处理视频
        Args:
            video_path: 视频文件路径
            config: 配置信息，包含自定义prompt等
        Returns:
            VideoSegment列表，包含起始时间、结束时间等信息
        """
        prompt = config.get("custom_prompt", self.default_prompt)
        # 使用自定义或默认prompt进行视频处理
        pass
```

### 2.3 卖点识别流程
```
原视频 → FunASR语音识别 → 文本转录 → Qwen卖点分析 → FunClip视频剪辑 → 输出片段
```

#### 2.3.1 语音识别模块
```python
from funasr import AutoModel

class ASRService:
    def __init__(self):
        self.model = AutoModel(model="iic/speech_seaco_paraformer_large_asr_nat-zh-cn-16k-common-vocab8404-pytorch")
    
    async def transcribe(self, video_path: str) -> Dict:
        """提取视频音频并转录为文本"""
        audio_path = self.extract_audio(video_path)
        result = self.model.generate(input=audio_path)
        return {
            'text': result[0]['text'],
            'timestamps': result[0]['timestamp']
        }
```

#### 2.3.2 卖点识别模块
```python
class SellingPointDetector:
    def __init__(self):
        self.llm = Qwen2Model()
        self.selling_point_types = {
            'hook': '钩子内容',
            'material': '材质介绍', 
            'effect': '穿搭效果',
            'promotion': '促成交'
        }
    
    async def detect_selling_points(self, transcript: str) -> List[SellingPoint]:
        """识别文本中的卖点"""
        prompt = self.build_detection_prompt(transcript)
        result = await self.llm.generate(prompt)
        return self.parse_selling_points(result)
```

### 2.4 视频处理流水线
```python
class VideoProcessingPipeline:
    def __init__(self):
        self.asr_service = ASRService()
        self.detector = SellingPointDetector()
        self.funclip_service = FunClipService()
        self.video_editor = VideoEditor()
    
    async def process(self, video_path: str, config: ProcessConfig) -> List[ProcessedVideo]:
        # 1. 语音识别
        transcript = await self.asr_service.transcribe(video_path)
        
        # 2. 卖点识别
        selling_points = await self.detector.detect_selling_points(transcript['text'])
        
        # 3. 视频剪辑
        segments = []
        for point in selling_points:
            clip_segments = await self.funclip_service.process_video(
                video_path, point.description
            )
            segments.extend(clip_segments)
        
        # 4. 后处理（片头片尾、水印、字幕）
        processed_videos = []
        for segment in segments:
            processed = await self.video_editor.post_process(segment, config)
            processed_videos.append(processed)
            
        return processed_videos
```

## 3. 核心模块设计

### 3.1 视频上传模块

#### 3.1.1 分片上传实现
```python
class ChunkedUploadHandler:
    def __init__(self, chunk_size: int = 5 * 1024 * 1024):  # 5MB
        self.chunk_size = chunk_size
    
    async def upload_chunk(self, file_id: str, chunk_index: int, chunk_data: bytes):
        """处理分片上传"""
        chunk_path = f"temp/{file_id}/chunk_{chunk_index}"
        await self.save_chunk(chunk_path, chunk_data)
        
    async def merge_chunks(self, file_id: str, total_chunks: int) -> str:
        """合并分片"""
        final_path = f"videos/{file_id}.mp4"
        await self.combine_chunks(file_id, total_chunks, final_path)
        return final_path
```

#### 3.1.2 文件验证
```python
class VideoValidator:
    ALLOWED_FORMATS = ['mp4', 'mov', 'avi']
    MAX_FILE_SIZE = 2 * 1024 * 1024 * 1024  # 2GB
    
    def validate_file(self, file: UploadFile) -> ValidationResult:
        # 格式检查
        # 大小检查
        # 视频完整性检查
        pass
```

### 3.2 任务调度模块

#### 3.2.1 Celery 任务定义
```python
from celery import Celery

app = Celery('video_clip')

@app.task(bind=True)
def process_video_task(self, video_id: str, config: dict):
    """异步视频处理任务"""
    try:
        # 更新任务状态
        self.update_state(state='PROGRESS', meta={'progress': 0})
        
        # 执行视频处理
        pipeline = VideoProcessingPipeline()
        result = await pipeline.process(video_id, config)
        
        # 更新进度
        self.update_state(state='PROGRESS', meta={'progress': 100})
        
        return {'status': 'SUCCESS', 'result': result}
    except Exception as exc:
        self.retry(exc=exc, countdown=60, max_retries=3)
```

#### 3.2.2 任务监控
```python
class TaskMonitor:
    def __init__(self):
        self.redis_client = redis.Redis()
    
    async def get_task_status(self, task_id: str) -> TaskStatus:
        """获取任务状态"""
        result = self.redis_client.get(f"task:{task_id}")
        return TaskStatus.parse(result)
    
    async def update_progress(self, task_id: str, progress: int):
        """更新任务进度"""
        self.redis_client.setex(
            f"task:{task_id}:progress", 
            3600, 
            progress
        )
```

### 3.3 用户认证模块

#### 3.3.1 JWT 认证
```python
class AuthService:
    def __init__(self):
        self.secret_key = settings.SECRET_KEY
        self.algorithm = "HS256"
    
    def create_access_token(self, user_id: str) -> str:
        """创建访问令牌"""
        payload = {
            "user_id": user_id,
            "exp": datetime.utcnow() + timedelta(hours=24)
        }
        return jwt.encode(payload, self.secret_key, algorithm=self.algorithm)
    
    def verify_token(self, token: str) -> Optional[str]:
        """验证令牌"""
        try:
            payload = jwt.decode(token, self.secret_key, algorithms=[self.algorithm])
            return payload.get("user_id")
        except jwt.ExpiredSignatureError:
            return None
```

## 4. 数据存储方案

### 4.1 MySQL 数据库设计

#### 4.1.1 核心表结构
```sql
-- 用户表
CREATE TABLE users (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 视频表
CREATE TABLE videos (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT NOT NULL,
    filename VARCHAR(255) NOT NULL,
    file_path VARCHAR(500) NOT NULL,
    file_size BIGINT NOT NULL,
    duration FLOAT,
    status ENUM('uploading', 'uploaded', 'processing', 'completed', 'failed'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- 处理任务表
CREATE TABLE processing_tasks (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    video_id BIGINT NOT NULL,
    task_id VARCHAR(100) UNIQUE NOT NULL,
    config JSON,
    status ENUM('pending', 'processing', 'completed', 'failed'),
    progress INT DEFAULT 0,
    error_message TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (video_id) REFERENCES videos(id)
);
```

### 4.2 Redis 缓存策略

#### 4.2.1 缓存分类
```python
class CacheKeys:
    USER_SESSION = "user:session:{user_id}"
    TASK_STATUS = "task:status:{task_id}"
    TASK_PROGRESS = "task:progress:{task_id}"
    VIDEO_METADATA = "video:meta:{video_id}"
    
class CacheService:
    def __init__(self):
        self.redis = redis.Redis()
        self.default_ttl = 3600  # 1小时
    
    async def cache_task_status(self, task_id: str, status: dict):
        """缓存任务状态"""
        key = CacheKeys.TASK_STATUS.format(task_id=task_id)
        await self.redis.setex(key, self.default_ttl, json.dumps(status))
```

### 4.3 文件存储方案

#### 4.3.1 本地存储结构
```
storage/
├── videos/          # 原始视频文件
│   ├── 2024/01/
│   └── 2024/02/
├── processed/       # 处理后的视频
│   ├── 2024/01/
│   └── 2024/02/
├── temp/           # 临时文件
│   └── chunks/     # 上传分片
└── templates/      # 片头片尾模板
    ├── intros/
    └── outros/
```

#### 4.3.2 OSS 云存储集成
```python
class OSSStorageService:
    def __init__(self):
        self.client = oss2.Bucket(
            oss2.Auth(settings.OSS_ACCESS_KEY, settings.OSS_SECRET_KEY),
            settings.OSS_ENDPOINT,
            settings.OSS_BUCKET
        )
    
    async def upload_file(self, local_path: str, oss_path: str) -> str:
        """上传文件到OSS"""
        result = self.client.put_object_from_file(oss_path, local_path)
        return f"https://{settings.OSS_BUCKET}.{settings.OSS_ENDPOINT}/{oss_path}"
```

## 5. 性能优化方案

### 5.1 视频处理优化

#### 5.1.1 并发处理
```python
class ConcurrentVideoProcessor:
    def __init__(self, max_workers: int = 5):
        self.max_workers = max_workers
        self.semaphore = asyncio.Semaphore(max_workers)
    
    async def process_multiple_videos(self, video_tasks: List[VideoTask]):
        """并发处理多个视频"""
        async with self.semaphore:
            tasks = [self.process_single_video(task) for task in video_tasks]
            results = await asyncio.gather(*tasks, return_exceptions=True)
            return results
```

#### 5.1.2 GPU 加速
```python
class GPUAcceleratedProcessor:
    def __init__(self):
        self.device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
        self.batch_size = 4
    
    async def batch_process(self, video_batch: List[str]) -> List[ProcessResult]:
        """批量GPU处理"""
        # 批量加载到GPU
        # 并行推理
        # 批量返回结果
        pass
```

### 5.2 数据库优化

#### 5.2.1 索引策略
```sql
-- 用户相关查询优化
CREATE INDEX idx_videos_user_status ON videos(user_id, status);
CREATE INDEX idx_tasks_video_status ON processing_tasks(video_id, status);

-- 时间范围查询优化  
CREATE INDEX idx_videos_created_at ON videos(created_at);
CREATE INDEX idx_tasks_created_at ON processing_tasks(created_at);
```

#### 5.2.2 读写分离
```python
class DatabaseRouter:
    def __init__(self):
        self.master_db = create_engine(settings.MASTER_DB_URL)
        self.slave_db = create_engine(settings.SLAVE_DB_URL)
    
    def get_read_db(self):
        return self.slave_db
    
    def get_write_db(self):
        return self.master_db
```

## 6. 安全方案

### 6.1 文件安全

#### 6.1.1 文件类型检测
```python
class FileSecurityChecker:
    def __init__(self):
        self.magic = magic.Magic()
    
    def check_file_type(self, file_path: str) -> bool:
        """检查真实文件类型"""
        file_type = self.magic.from_file(file_path)
        return file_type.startswith('video/')
    
    def scan_virus(self, file_path: str) -> bool:
        """病毒扫描"""
        # 集成 ClamAV 或其他杀毒引擎
        pass
```

### 6.2 API 安全

#### 6.2.1 限流策略
```python
from slowapi import Limiter, _rate_limit_exceeded_handler
from slowapi.util import get_remote_address

limiter = Limiter(key_func=get_remote_address)

@app.post("/api/upload")
@limiter.limit("10/minute")  # 每分钟最多10次上传
async def upload_video(request: Request):
    pass
```

#### 6.2.2 输入验证
```python
class InputValidator:
    @staticmethod
    def validate_video_config(config: dict) -> dict:
        """验证视频处理配置"""
        schema = {
            "min_duration": {"type": "integer", "minimum": 30, "maximum": 180},
            "max_duration": {"type": "integer", "minimum": 60, "maximum": 300},
            "selling_points": {"type": "array", "items": {"type": "string"}}
        }
        validate(config, schema)
        return config
```

## 7. 监控与日志

### 7.1 应用监控
```python
from prometheus_client import Counter, Histogram, generate_latest

# 监控指标
video_processed_total = Counter('video_processed_total', 'Total processed videos')
processing_duration = Histogram('processing_duration_seconds', 'Video processing duration')

class MetricsCollector:
    @staticmethod
    def record_processing_time(duration: float):
        processing_duration.observe(duration)
    
    @staticmethod
    def increment_processed_videos():
        video_processed_total.inc()
```

### 7.2 日志系统
```python
import structlog

logger = structlog.get_logger()

class VideoProcessingLogger:
    def __init__(self, task_id: str):
        self.logger = logger.bind(task_id=task_id)
    
    def log_processing_start(self, video_id: str):
        self.logger.info("Video processing started", video_id=video_id)
    
    def log_processing_error(self, error: Exception):
        self.logger.error("Video processing failed", error=str(error))
```

## 8. 部署方案

### 8.1 Docker 容器化
```dockerfile
# Dockerfile.backend
FROM python:3.12-slim

# 安装系统依赖
RUN apt-get update && apt-get install -y \
    ffmpeg \
    libmagic1 \
    && rm -rf /var/lib/apt/lists/*

# 安装Python依赖
COPY requirements.txt .
RUN pip install -r requirements.txt

# 复制应用代码
COPY . /app
WORKDIR /app

# 启动命令
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
```

### 8.2 Docker Compose
```yaml
# docker-compose.yml
version: '3.8'

services:
  backend:
    build: .
    ports:
      - "8000:8000"
    environment:
      - DATABASE_URL=mysql://user:password@mysql:3306/videoclip
      - REDIS_URL=redis://redis:6379
    depends_on:
      - mysql
      - redis
    volumes:
      - ./storage:/app/storage

  celery:
    build: .
    command: celery -A app.celery worker --loglevel=info
    environment:
      - CELERY_BROKER_URL=redis://redis:6379
    depends_on:
      - redis
    volumes:
      - ./storage:/app/storage

  mysql:
    image: mysql:8.0
    environment:
      - MYSQL_ROOT_PASSWORD=password
      - MYSQL_DATABASE=videoclip
    volumes:
      - mysql_data:/var/lib/mysql

  redis:
    image: redis:7-alpine
    
volumes:
  mysql_data:
```

### 8.3 生产环境部署
```bash
# 生产部署脚本
#!/bin/bash
set -e

# 1. 拉取最新代码
git pull origin main

# 2. 构建镜像
docker-compose build

# 3. 数据库迁移
docker-compose run backend alembic upgrade head

# 4. 滚动更新
docker-compose up -d --scale backend=3

# 5. 健康检查
curl -f http://localhost:8000/health || exit 1

echo "Deployment completed successfully"
```

## 9. 扩展性考虑

### 9.1 微服务拆分
```
当用户量增长时，可以将系统拆分为：
- 用户服务 (User Service)
- 视频管理服务 (Video Management Service)  
- AI处理服务 (AI Processing Service)
- 文件存储服务 (Storage Service)
- 通知服务 (Notification Service)
```

### 9.2 负载均衡
```nginx
# nginx.conf
upstream backend {
    server backend1:8000;
    server backend2:8000;
    server backend3:8000;
}

server {
    listen 80;
    
    location /api/ {
        proxy_pass http://backend;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}
```

### 9.3 数据库分片
```python
class DatabaseSharding:
    def __init__(self):
        self.shards = {
            'shard1': create_engine('mysql://host1/db'),
            'shard2': create_engine('mysql://host2/db'), 
            'shard3': create_engine('mysql://host3/db')
        }
    
    def get_shard(self, user_id: int):
        """根据用户ID选择分片"""
        shard_id = f"shard{(user_id % 3) + 1}"
        return self.shards[shard_id]
```

这个技术方案提供了完整的系统架构设计，涵盖了从前端到后端、从数据存储到AI服务的各个方面，为后续的开发实施提供了详细的技术指导。 
