# Video-Clip 数据库设计

## 1. 数据库设计概览

Video-Clip智能视频剪辑平台采用MySQL作为主数据库，Redis作为缓存和消息队列。数据库设计遵循第三范式，确保数据一致性和查询性能。

### 1.1 设计原则
- **规范化设计**: 遵循数据库范式，减少数据冗余
- **性能优化**: 合理设计索引，优化查询性能
- **扩展性**: 支持水平分片和读写分离
- **数据完整性**: 外键约束和数据验证
- **安全性**: 敏感数据加密存储

### 1.2 技术选型
- **主数据库**: MySQL 8.0
- **缓存数据库**: Redis 7.0
- **连接池**: SQLAlchemy + PyMySQL
- **ORM框架**: SQLAlchemy 2.0
- **数据迁移**: Alembic

## 2. 数据库架构

### 2.1 整体架构
```
数据存储架构
├── MySQL集群
│   ├── 主库 (写操作)
│   ├── 从库1 (读操作)
│   └── 从库2 (读操作)
├── Redis集群
│   ├── 主节点 (缓存/队列)
│   └── 从节点 (备份)
└── 文件存储
    ├── 本地存储
    └── 阿里云OSS
```

### 2.2 数据分类
```
数据分类
├── 用户数据
│   ├── 用户基本信息
│   ├── 认证信息
│   └── 用户配置
├── 业务数据
│   ├── 视频信息
│   ├── 处理任务
│   ├── 处理结果
│   └── 模板数据
├── 系统数据
│   ├── 操作日志
│   ├── 系统配置
│   └── 统计数据
└── 缓存数据
    ├── 会话信息
    ├── 任务状态
    └── 查询缓存
```

## 3. 核心数据表设计

### 3.1 用户相关表

#### 用户表 (users)
```sql
CREATE TABLE users (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '用户ID',
    username VARCHAR(50) NOT NULL UNIQUE COMMENT '用户名',
    email VARCHAR(100) NOT NULL UNIQUE COMMENT '邮箱',
    phone VARCHAR(20) COMMENT '手机号',
    password_hash VARCHAR(255) NOT NULL COMMENT '密码哈希',
    avatar_url VARCHAR(500) COMMENT '头像URL',
    status TINYINT NOT NULL DEFAULT 1 COMMENT '状态: 1-正常, 0-禁用',
    user_type TINYINT NOT NULL DEFAULT 1 COMMENT '用户类型: 1-免费, 2-付费, 3-企业',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    last_login_at TIMESTAMP NULL COMMENT '最后登录时间',
    
    INDEX idx_username (username),
    INDEX idx_email (email),
    INDEX idx_status (status),
    INDEX idx_created_at (created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';
```

#### 用户配置表 (user_configs)
```sql
CREATE TABLE user_configs (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '配置ID',
    user_id BIGINT NOT NULL COMMENT '用户ID',
    config_key VARCHAR(100) NOT NULL COMMENT '配置键',
    config_value JSON COMMENT '配置值',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    
    UNIQUE KEY uk_user_key (user_id, config_key),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    INDEX idx_user_id (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户配置表';
```

#### 用户额度表 (user_quotas)
```sql
CREATE TABLE user_quotas (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '额度ID',
    user_id BIGINT NOT NULL COMMENT '用户ID',
    quota_type VARCHAR(50) NOT NULL COMMENT '额度类型: monthly_videos, storage_space',
    total_quota BIGINT NOT NULL DEFAULT 0 COMMENT '总额度',
    used_quota BIGINT NOT NULL DEFAULT 0 COMMENT '已用额度',
    reset_period VARCHAR(20) NOT NULL DEFAULT 'monthly' COMMENT '重置周期: daily, weekly, monthly',
    last_reset_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '上次重置时间',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    
    UNIQUE KEY uk_user_quota_type (user_id, quota_type),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    INDEX idx_user_id (user_id),
    INDEX idx_quota_type (quota_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户额度表';
```

### 3.2 视频相关表

#### 视频表 (videos)
```sql
CREATE TABLE videos (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '视频ID',
    user_id BIGINT NOT NULL COMMENT '用户ID',
    filename VARCHAR(255) NOT NULL COMMENT '文件名',
    original_filename VARCHAR(255) NOT NULL COMMENT '原始文件名',
    file_path VARCHAR(500) NOT NULL COMMENT '文件路径',
    file_size BIGINT NOT NULL COMMENT '文件大小(字节)',
    file_hash VARCHAR(64) COMMENT '文件哈希值',
    mime_type VARCHAR(100) COMMENT 'MIME类型',
    duration DECIMAL(10,2) COMMENT '时长(秒)',
    width INT COMMENT '宽度',
    height INT COMMENT '高度',
    frame_rate DECIMAL(5,2) COMMENT '帧率',
    bitrate BIGINT COMMENT '比特率',
    thumbnail_url VARCHAR(500) COMMENT '缩略图URL',
    status TINYINT NOT NULL DEFAULT 1 COMMENT '状态: 1-已上传, 2-处理中, 3-已完成, 4-失败',
    upload_id VARCHAR(100) COMMENT '上传ID',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    INDEX idx_user_id (user_id),
    INDEX idx_status (status),
    INDEX idx_created_at (created_at),
    INDEX idx_file_hash (file_hash),
    INDEX idx_upload_id (upload_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='视频表';
```

#### 视频处理任务表 (processing_tasks)
```sql
CREATE TABLE processing_tasks (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '任务ID',
    task_id VARCHAR(100) NOT NULL UNIQUE COMMENT '任务唯一标识',
    user_id BIGINT NOT NULL COMMENT '用户ID',
    video_id BIGINT NOT NULL COMMENT '视频ID',
    task_type VARCHAR(50) NOT NULL DEFAULT 'video_clip' COMMENT '任务类型',
    config JSON COMMENT '处理配置',
    status TINYINT NOT NULL DEFAULT 0 COMMENT '状态: 0-待处理, 1-处理中, 2-已完成, 3-失败, 4-已取消',
    progress TINYINT NOT NULL DEFAULT 0 COMMENT '进度百分比',
    current_step VARCHAR(100) COMMENT '当前步骤',
    error_message TEXT COMMENT '错误信息',
    estimated_duration INT COMMENT '预估耗时(秒)',
    actual_duration INT COMMENT '实际耗时(秒)',
    retry_count TINYINT NOT NULL DEFAULT 0 COMMENT '重试次数',
    max_retries TINYINT NOT NULL DEFAULT 3 COMMENT '最大重试次数',
    priority TINYINT NOT NULL DEFAULT 5 COMMENT '优先级: 1-最高, 10-最低',
    started_at TIMESTAMP NULL COMMENT '开始时间',
    completed_at TIMESTAMP NULL COMMENT '完成时间',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (video_id) REFERENCES videos(id) ON DELETE CASCADE,
    INDEX idx_task_id (task_id),
    INDEX idx_user_id (user_id),
    INDEX idx_video_id (video_id),
    INDEX idx_status (status),
    INDEX idx_priority (priority),
    INDEX idx_created_at (created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='视频处理任务表';
```

#### 处理结果表 (processing_results)
```sql
CREATE TABLE processing_results (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '结果ID',
    task_id BIGINT NOT NULL COMMENT '任务ID',
    user_id BIGINT NOT NULL COMMENT '用户ID',
    video_id BIGINT NOT NULL COMMENT '原视频ID',
    result_type VARCHAR(50) NOT NULL COMMENT '结果类型: segment, transcript, analysis',
    result_data JSON COMMENT '结果数据',
    file_path VARCHAR(500) COMMENT '文件路径',
    file_size BIGINT COMMENT '文件大小',
    metadata JSON COMMENT '元数据',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    
    FOREIGN KEY (task_id) REFERENCES processing_tasks(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (video_id) REFERENCES videos(id) ON DELETE CASCADE,
    INDEX idx_task_id (task_id),
    INDEX idx_user_id (user_id),
    INDEX idx_video_id (video_id),
    INDEX idx_result_type (result_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='处理结果表';
```

#### 视频片段表 (video_segments)
```sql
CREATE TABLE video_segments (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '片段ID',
    segment_id VARCHAR(100) NOT NULL UNIQUE COMMENT '片段唯一标识',
    task_id BIGINT NOT NULL COMMENT '任务ID',
    user_id BIGINT NOT NULL COMMENT '用户ID',
    original_video_id BIGINT NOT NULL COMMENT '原视频ID',
    selling_point_type VARCHAR(50) NOT NULL COMMENT '卖点类型: hook, material, effect, promotion',
    start_time DECIMAL(10,3) NOT NULL COMMENT '开始时间(秒)',
    end_time DECIMAL(10,3) NOT NULL COMMENT '结束时间(秒)',
    duration DECIMAL(10,3) GENERATED ALWAYS AS (end_time - start_time) STORED COMMENT '时长(秒)',
    confidence DECIMAL(3,2) COMMENT '置信度',
    title VARCHAR(200) COMMENT '片段标题',
    description TEXT COMMENT '片段描述',
    file_path VARCHAR(500) COMMENT '文件路径',
    file_size BIGINT COMMENT '文件大小',
    thumbnail_url VARCHAR(500) COMMENT '缩略图URL',
    download_count INT NOT NULL DEFAULT 0 COMMENT '下载次数',
    status TINYINT NOT NULL DEFAULT 1 COMMENT '状态: 1-正常, 0-已删除',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    
    FOREIGN KEY (task_id) REFERENCES processing_tasks(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (original_video_id) REFERENCES videos(id) ON DELETE CASCADE,
    INDEX idx_segment_id (segment_id),
    INDEX idx_task_id (task_id),
    INDEX idx_user_id (user_id),
    INDEX idx_original_video_id (original_video_id),
    INDEX idx_selling_point_type (selling_point_type),
    INDEX idx_duration (duration),
    INDEX idx_created_at (created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='视频片段表';
```

### 3.3 模板相关表

#### 模板表 (templates)
```sql
CREATE TABLE templates (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '模板ID',
    template_id VARCHAR(100) NOT NULL UNIQUE COMMENT '模板唯一标识',
    user_id BIGINT COMMENT '创建用户ID(NULL表示系统模板)',
    name VARCHAR(200) NOT NULL COMMENT '模板名称',
    type VARCHAR(50) NOT NULL COMMENT '模板类型: intro, outro, watermark',
    category VARCHAR(50) COMMENT '模板分类',
    description TEXT COMMENT '模板描述',
    file_path VARCHAR(500) COMMENT '文件路径',
    preview_url VARCHAR(500) COMMENT '预览图URL',
    duration DECIMAL(5,2) COMMENT '时长(秒)',
    width INT COMMENT '宽度',
    height INT COMMENT '高度',
    config JSON COMMENT '模板配置',
    is_public TINYINT NOT NULL DEFAULT 0 COMMENT '是否公开: 1-是, 0-否',
    is_system TINYINT NOT NULL DEFAULT 0 COMMENT '是否系统模板: 1-是, 0-否',
    usage_count INT NOT NULL DEFAULT 0 COMMENT '使用次数',
    status TINYINT NOT NULL DEFAULT 1 COMMENT '状态: 1-正常, 0-禁用',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL,
    INDEX idx_template_id (template_id),
    INDEX idx_user_id (user_id),
    INDEX idx_type (type),
    INDEX idx_category (category),
    INDEX idx_is_public (is_public),
    INDEX idx_is_system (is_system),
    INDEX idx_usage_count (usage_count),
    INDEX idx_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='模板表';
```

### 3.4 下载相关表

#### 下载记录表 (download_records)
```sql
CREATE TABLE download_records (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '下载记录ID',
    download_id VARCHAR(100) NOT NULL UNIQUE COMMENT '下载唯一标识',
    user_id BIGINT NOT NULL COMMENT '用户ID',
    download_type VARCHAR(50) NOT NULL COMMENT '下载类型: single, batch',
    segment_ids JSON COMMENT '片段ID列表',
    file_format VARCHAR(20) NOT NULL DEFAULT 'mp4' COMMENT '文件格式',
    package_format VARCHAR(20) COMMENT '打包格式: zip, tar',
    file_path VARCHAR(500) COMMENT '打包文件路径',
    file_size BIGINT COMMENT '文件大小',
    download_url VARCHAR(500) COMMENT '下载链接',
    expires_at TIMESTAMP COMMENT '链接过期时间',
    download_count INT NOT NULL DEFAULT 0 COMMENT '下载次数',
    status TINYINT NOT NULL DEFAULT 0 COMMENT '状态: 0-准备中, 1-可下载, 2-已过期',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    INDEX idx_download_id (download_id),
    INDEX idx_user_id (user_id),
    INDEX idx_status (status),
    INDEX idx_expires_at (expires_at),
    INDEX idx_created_at (created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='下载记录表';
```

### 3.5 系统相关表

#### 操作日志表 (operation_logs)
```sql
CREATE TABLE operation_logs (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '日志ID',
    user_id BIGINT COMMENT '用户ID',
    operation VARCHAR(100) NOT NULL COMMENT '操作类型',
    resource_type VARCHAR(50) COMMENT '资源类型',
    resource_id VARCHAR(100) COMMENT '资源ID',
    ip_address VARCHAR(45) COMMENT 'IP地址',
    user_agent VARCHAR(500) COMMENT '用户代理',
    request_data JSON COMMENT '请求数据',
    response_data JSON COMMENT '响应数据',
    execution_time INT COMMENT '执行时间(毫秒)',
    status TINYINT NOT NULL COMMENT '状态: 1-成功, 0-失败',
    error_message TEXT COMMENT '错误信息',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL,
    INDEX idx_user_id (user_id),
    INDEX idx_operation (operation),
    INDEX idx_resource_type (resource_type),
    INDEX idx_status (status),
    INDEX idx_created_at (created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='操作日志表';
```

#### 系统配置表 (system_configs)
```sql
CREATE TABLE system_configs (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '配置ID',
    config_key VARCHAR(100) NOT NULL UNIQUE COMMENT '配置键',
    config_value JSON NOT NULL COMMENT '配置值',
    description TEXT COMMENT '配置描述',
    is_public TINYINT NOT NULL DEFAULT 0 COMMENT '是否公开: 1-是, 0-否',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    
    INDEX idx_config_key (config_key),
    INDEX idx_is_public (is_public)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统配置表';
```

## 4. 实体关系图 (ERD)

```mermaid
erDiagram
    users {
        bigint id PK
        varchar username UK
        varchar email UK
        varchar phone
        varchar password_hash
        varchar avatar_url
        tinyint status
        tinyint user_type
        timestamp created_at
        timestamp updated_at
        timestamp last_login_at
    }
    
    user_configs {
        bigint id PK
        bigint user_id FK
        varchar config_key
        json config_value
        timestamp created_at
        timestamp updated_at
    }
    
    user_quotas {
        bigint id PK
        bigint user_id FK
        varchar quota_type
        bigint total_quota
        bigint used_quota
        varchar reset_period
        timestamp last_reset_at
        timestamp created_at
        timestamp updated_at
    }
    
    videos {
        bigint id PK
        bigint user_id FK
        varchar filename
        varchar original_filename
        varchar file_path
        bigint file_size
        varchar file_hash
        varchar mime_type
        decimal duration
        int width
        int height
        decimal frame_rate
        bigint bitrate
        varchar thumbnail_url
        tinyint status
        varchar upload_id
        timestamp created_at
        timestamp updated_at
    }
    
    processing_tasks {
        bigint id PK
        varchar task_id UK
        bigint user_id FK
        bigint video_id FK
        varchar task_type
        json config
        tinyint status
        tinyint progress
        varchar current_step
        text error_message
        int estimated_duration
        int actual_duration
        tinyint retry_count
        tinyint max_retries
        tinyint priority
        timestamp started_at
        timestamp completed_at
        timestamp created_at
        timestamp updated_at
    }
    
    processing_results {
        bigint id PK
        bigint task_id FK
        bigint user_id FK
        bigint video_id FK
        varchar result_type
        json result_data
        varchar file_path
        bigint file_size
        json metadata
        timestamp created_at
    }
    
    video_segments {
        bigint id PK
        varchar segment_id UK
        bigint task_id FK
        bigint user_id FK
        bigint original_video_id FK
        varchar selling_point_type
        decimal start_time
        decimal end_time
        decimal duration
        decimal confidence
        varchar title
        text description
        varchar file_path
        bigint file_size
        varchar thumbnail_url
        int download_count
        tinyint status
        timestamp created_at
        timestamp updated_at
    }
    
    templates {
        bigint id PK
        varchar template_id UK
        bigint user_id FK
        varchar name
        varchar type
        varchar category
        text description
        varchar file_path
        varchar preview_url
        decimal duration
        int width
        int height
        json config
        tinyint is_public
        tinyint is_system
        int usage_count
        tinyint status
        timestamp created_at
        timestamp updated_at
    }
    
    download_records {
        bigint id PK
        varchar download_id UK
        bigint user_id FK
        varchar download_type
        json segment_ids
        varchar file_format
        varchar package_format
        varchar file_path
        bigint file_size
        varchar download_url
        timestamp expires_at
        int download_count
        tinyint status
        timestamp created_at
        timestamp updated_at
    }
    
    operation_logs {
        bigint id PK
        bigint user_id FK
        varchar operation
        varchar resource_type
        varchar resource_id
        varchar ip_address
        varchar user_agent
        json request_data
        json response_data
        int execution_time
        tinyint status
        text error_message
        timestamp created_at
    }
    
    system_configs {
        bigint id PK
        varchar config_key UK
        json config_value
        text description
        tinyint is_public
        timestamp created_at
        timestamp updated_at
    }
    
    %% 关系定义
    users ||--o{ user_configs : "has"
    users ||--o{ user_quotas : "has"
    users ||--o{ videos : "uploads"
    users ||--o{ processing_tasks : "creates"
    users ||--o{ processing_results : "owns"
    users ||--o{ video_segments : "owns"
    users ||--o{ templates : "creates"
    users ||--o{ download_records : "downloads"
    users ||--o{ operation_logs : "performs"
    
    videos ||--o{ processing_tasks : "processed_by"
    videos ||--o{ processing_results : "generates"
    videos ||--o{ video_segments : "split_into"
    
    processing_tasks ||--o{ processing_results : "produces"
    processing_tasks ||--o{ video_segments : "generates"
```

## 5. 索引设计策略

### 5.1 主要索引类型

#### 唯一索引
```sql
-- 用户表唯一索引
ALTER TABLE users ADD UNIQUE INDEX uk_username (username);
ALTER TABLE users ADD UNIQUE INDEX uk_email (email);

-- 任务表唯一索引
ALTER TABLE processing_tasks ADD UNIQUE INDEX uk_task_id (task_id);

-- 片段表唯一索引
ALTER TABLE video_segments ADD UNIQUE INDEX uk_segment_id (segment_id);
```

#### 复合索引
```sql
-- 用户视频查询索引
ALTER TABLE videos ADD INDEX idx_user_status_created (user_id, status, created_at);

-- 任务状态查询索引
ALTER TABLE processing_tasks ADD INDEX idx_user_status_priority (user_id, status, priority);

-- 片段查询索引
ALTER TABLE video_segments ADD INDEX idx_user_type_created (user_id, selling_point_type, created_at);

-- 下载记录查询索引
ALTER TABLE download_records ADD INDEX idx_user_status_expires (user_id, status, expires_at);
```

#### 功能性索引
```sql
-- JSON字段索引（MySQL 8.0+）
ALTER TABLE user_configs ADD INDEX idx_config_value_selling_points ((CAST(config_value->'$.selling_points' AS JSON)));

-- 计算字段索引
ALTER TABLE video_segments ADD INDEX idx_duration (duration);

-- 前缀索引
ALTER TABLE operation_logs ADD INDEX idx_user_agent_prefix (user_agent(100));
```

### 5.2 分区策略

#### 按时间分区
```sql
-- 操作日志表按月分区
ALTER TABLE operation_logs PARTITION BY RANGE (YEAR(created_at) * 100 + MONTH(created_at)) (
    PARTITION p202401 VALUES LESS THAN (202402),
    PARTITION p202402 VALUES LESS THAN (202403),
    PARTITION p202403 VALUES LESS THAN (202404),
    -- 继续添加月份分区
    PARTITION p_future VALUES LESS THAN MAXVALUE
);

-- 处理结果表按年分区
ALTER TABLE processing_results PARTITION BY RANGE (YEAR(created_at)) (
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION p_future VALUES LESS THAN MAXVALUE
);
```

## 6. Redis 缓存设计

### 6.1 缓存策略

#### 数据结构设计
```redis
# 用户会话缓存
user:session:{user_id} -> {
    "token": "jwt_token",
    "expires_at": "2024-01-15T10:30:00Z",
    "user_info": {...}
}
TTL: 24小时

# 任务状态缓存
task:status:{task_id} -> {
    "status": 1,
    "progress": 45,
    "current_step": "语音识别中",
    "updated_at": "2024-01-15T10:30:00Z"
}
TTL: 1小时

# 视频元数据缓存
video:meta:{video_id} -> {
    "filename": "demo.mp4",
    "duration": 300.5,
    "file_size": 52428800,
    "thumbnail_url": "..."
}
TTL: 1天

# 用户配置缓存
user:config:{user_id} -> {
    "default_config": {...},
    "watermark_templates": [...],
    "updated_at": "2024-01-15T10:30:00Z"
}
TTL: 12小时

# API限流计数器
rate_limit:{user_id}:{endpoint} -> 计数值
TTL: 1分钟/1小时/1天

# 任务队列
queue:video_processing -> [task_id1, task_id2, ...]
queue:high_priority -> [task_id1, task_id2, ...]
```

### 6.2 缓存更新策略
```python
class CacheStrategy:
    """缓存策略管理"""
    
    def cache_aside_pattern(self):
        """Cache-Aside模式"""
        # 读取：先查缓存，未命中则查数据库并更新缓存
        # 更新：先更新数据库，再删除缓存
        
    def write_through_pattern(self):
        """Write-Through模式"""
        # 更新：同时更新数据库和缓存
        
    def write_behind_pattern(self):
        """Write-Behind模式"""
        # 更新：先更新缓存，异步更新数据库
```

## 7. 数据库性能优化

### 7.1 查询优化

#### 慢查询优化
```sql
-- 开启慢查询日志
SET GLOBAL slow_query_log = 'ON';
SET GLOBAL long_query_time = 2;
SET GLOBAL log_queries_not_using_indexes = 'ON';

-- 常见优化查询示例
-- 优化前：全表扫描
SELECT * FROM videos WHERE user_id = 123 ORDER BY created_at DESC LIMIT 10;

-- 优化后：使用复合索引
ALTER TABLE videos ADD INDEX idx_user_created (user_id, created_at);

-- 优化前：子查询
SELECT * FROM video_segments WHERE task_id IN (
    SELECT id FROM processing_tasks WHERE user_id = 123
);

-- 优化后：JOIN查询
SELECT vs.* FROM video_segments vs
JOIN processing_tasks pt ON vs.task_id = pt.id
WHERE pt.user_id = 123;
```

#### 分页优化
```sql
-- 避免深度分页的LIMIT优化
-- 优化前：深度分页性能差
SELECT * FROM videos WHERE user_id = 123 ORDER BY id LIMIT 10000, 10;

-- 优化后：使用游标分页
SELECT * FROM videos WHERE user_id = 123 AND id > 10000 ORDER BY id LIMIT 10;

-- 使用覆盖索引优化
SELECT id, filename, created_at FROM videos 
WHERE user_id = 123 ORDER BY created_at DESC LIMIT 10;
```

### 7.2 读写分离配置

#### 数据源配置
```python
class DatabaseConfig:
    """数据库配置"""
    
    # 主库配置（写操作）
    MASTER_DB = {
        'host': 'master.mysql.com',
        'port': 3306,
        'database': 'videoclip',
        'pool_size': 20,
        'max_overflow': 30
    }
    
    # 从库配置（读操作）
    SLAVE_DBS = [
        {
            'host': 'slave1.mysql.com',
            'port': 3306,
            'database': 'videoclip',
            'pool_size': 15,
            'max_overflow': 25
        },
        {
            'host': 'slave2.mysql.com',
            'port': 3306,
            'database': 'videoclip',
            'pool_size': 15,
            'max_overflow': 25
        }
    ]
    
    # 路由规则
    def get_db_for_operation(self, operation):
        """根据操作类型选择数据库"""
        if operation in ['SELECT']:
            return self.get_slave_db()
        else:
            return self.get_master_db()
```

### 7.3 连接池优化

#### SQLAlchemy连接池配置
```python
from sqlalchemy import create_engine
from sqlalchemy.pool import QueuePool

# 连接池配置
engine = create_engine(
    "mysql+pymysql://user:password@localhost/videoclip",
    poolclass=QueuePool,
    pool_size=20,              # 连接池大小
    max_overflow=30,           # 超出连接池大小的连接数
    pool_timeout=30,           # 获取连接超时时间
    pool_recycle=3600,         # 连接回收时间
    pool_pre_ping=True,        # 连接前检查
    echo=False                 # 是否输出SQL
)
```

## 8. 数据安全与备份

### 8.1 数据加密

#### 敏感字段加密
```sql
-- 密码加密存储
CREATE TABLE users (
    -- 使用BCrypt加密密码
    password_hash VARCHAR(255) NOT NULL COMMENT '密码哈希(BCrypt)',
    -- 其他敏感信息可使用AES加密
    phone_encrypted BLOB COMMENT '加密手机号'
);

-- 文件哈希校验
CREATE TABLE videos (
    file_hash VARCHAR(64) COMMENT '文件哈希值(SHA-256)'
);
```

#### 传输加密
```yaml
# SSL/TLS配置
ssl_config:
  enable: true
  cert_file: /path/to/cert.pem
  key_file: /path/to/key.pem
  ca_file: /path/to/ca.pem
  ssl_mode: REQUIRED
```

### 8.2 备份策略

#### 全量备份
```bash
#!/bin/bash
# 每日全量备份脚本
DATE=$(date +%Y%m%d)
BACKUP_DIR="/backup/mysql"

# 创建备份目录
mkdir -p $BACKUP_DIR

# 执行备份
mysqldump \
  --host=localhost \
  --user=backup_user \
  --password=backup_password \
  --single-transaction \
  --routines \
  --triggers \
  --databases videoclip \
  | gzip > $BACKUP_DIR/videoclip_full_$DATE.sql.gz

# 保留30天备份
find $BACKUP_DIR -name "videoclip_full_*.sql.gz" -mtime +30 -delete
```

#### 增量备份
```bash
#!/bin/bash
# 增量备份（基于binlog）
BACKUP_DIR="/backup/mysql/binlog"
MYSQL_LOG_BIN_PATH="/var/log/mysql"

# 刷新日志
mysql -e "FLUSH LOGS;"

# 复制binlog文件
rsync -av $MYSQL_LOG_BIN_PATH/mysql-bin.* $BACKUP_DIR/

# 清理过期binlog
mysql -e "PURGE BINARY LOGS BEFORE DATE_SUB(NOW(), INTERVAL 7 DAY);"
```

### 8.3 监控与告警

#### 数据库监控指标
```yaml
监控指标:
  连接数监控:
    - 当前连接数
    - 最大连接数
    - 连接使用率
    
  性能监控:
    - QPS (每秒查询数)
    - TPS (每秒事务数)
    - 慢查询数量
    - 锁等待时间
    
  资源监控:
    - CPU使用率
    - 内存使用率
    - 磁盘空间
    - 磁盘IO
    
  复制监控:
    - 主从延迟
    - 复制状态
    - 二进制日志位置
```

## 9. 数据迁移方案

### 9.1 版本迁移

#### Alembic迁移脚本示例
```python
"""添加视频片段表

Revision ID: 001_add_video_segments
Revises: 
Create Date: 2024-01-15 10:30:00.000000

"""
from alembic import op
import sqlalchemy as sa

# revision identifiers
revision = '001_add_video_segments'
down_revision = None
branch_labels = None
depends_on = None

def upgrade():
    """升级数据库架构"""
    op.create_table(
        'video_segments',
        sa.Column('id', sa.BigInteger(), nullable=False),
        sa.Column('segment_id', sa.String(100), nullable=False),
        sa.Column('task_id', sa.BigInteger(), nullable=False),
        # ... 其他字段定义
        sa.PrimaryKeyConstraint('id'),
        sa.UniqueConstraint('segment_id'),
        mysql_charset='utf8mb4',
        mysql_collate='utf8mb4_unicode_ci'
    )
    
    # 添加索引
    op.create_index('idx_task_id', 'video_segments', ['task_id'])
    op.create_index('idx_user_id', 'video_segments', ['user_id'])

def downgrade():
    """回滚数据库架构"""
    op.drop_table('video_segments')
```

### 9.2 数据迁移策略

#### 大表迁移
```sql
-- 在线DDL操作
ALTER TABLE videos 
ADD COLUMN new_field VARCHAR(100),
ALGORITHM=INPLACE, 
LOCK=NONE;

-- 分批数据迁移
UPDATE videos 
SET new_field = CONCAT('prefix_', old_field) 
WHERE id BETWEEN 1 AND 10000;

-- 使用pt-online-schema-change工具
pt-online-schema-change \
  --alter "ADD COLUMN new_field VARCHAR(100)" \
  --execute h=localhost,D=videoclip,t=videos
```

## 10. 扩展性设计

### 10.1 水平分片

#### 分片策略
```python
class ShardingStrategy:
    """分片策略"""
    
    def user_based_sharding(self, user_id):
        """基于用户ID分片"""
        shard_num = user_id % 8
        return f"shard_{shard_num}"
    
    def time_based_sharding(self, created_at):
        """基于时间分片"""
        year_month = created_at.strftime('%Y%m')
        return f"shard_{year_month}"
    
    def hash_based_sharding(self, key):
        """基于哈希分片"""
        import hashlib
        hash_value = int(hashlib.md5(key.encode()).hexdigest(), 16)
        shard_num = hash_value % 16
        return f"shard_{shard_num:02d}"
```

#### 分片配置
```yaml
# 分片配置
sharding:
  strategy: user_based
  shard_count: 8
  shards:
    shard_0:
      host: db-shard-0.example.com
      database: videoclip_shard_0
    shard_1:
      host: db-shard-1.example.com
      database: videoclip_shard_1
    # ... 更多分片配置
```

### 10.2 数据归档

#### 冷热数据分离
```sql
-- 创建归档表
CREATE TABLE videos_archive LIKE videos;
CREATE TABLE processing_tasks_archive LIKE processing_tasks;

-- 数据归档脚本
INSERT INTO videos_archive 
SELECT * FROM videos 
WHERE created_at < DATE_SUB(NOW(), INTERVAL 1 YEAR);

-- 删除已归档数据
DELETE FROM videos 
WHERE created_at < DATE_SUB(NOW(), INTERVAL 1 YEAR);
```

这个数据库设计为Video-Clip项目提供了完整的数据存储方案，确保数据的一致性、性能和可扩展性。通过合理的表结构设计、索引优化和缓存策略，能够支撑大规模用户和数据的业务需求。 
