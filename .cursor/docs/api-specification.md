# Video-Clip API 接口文档

## 1. API 概览

### 1.1 基本信息
- **Base URL**: `https://api.videoclip.com/v1`
- **协议**: HTTPS
- **认证方式**: JWT Bearer Token
- **数据格式**: JSON
- **字符编码**: UTF-8

### 1.2 通用响应格式
```json
{
  "code": 200,
  "message": "success",
  "data": {},
  "timestamp": "2024-01-15T10:30:00Z"
}
```

### 1.3 分页响应格式
```json
{
  "code": 200,
  "message": "success",
  "data": {
    "items": [],
    "total": 100,
    "page": 1,
    "page_size": 20,
    "total_pages": 5
  },
  "timestamp": "2024-01-15T10:30:00Z"
}
```

## 2. 认证接口

### 2.1 用户注册
```http
POST /auth/register
```

**请求体**:
```json
{
  "username": "string",
  "email": "string",
  "password": "string"
}
```

**响应**:
```json
{
  "code": 201,
  "message": "注册成功",
  "data": {
    "user_id": "123456",
    "username": "test_user",
    "email": "user@example.com",
    "created_at": "2024-01-15T10:30:00Z"
  }
}
```

### 2.2 用户登录
```http
POST /auth/login
```

**请求体**:
```json
{
  "email": "string",
  "password": "string"
}
```

**响应**:
```json
{
  "code": 200,
  "message": "登录成功",
  "data": {
    "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
    "token_type": "bearer",
    "expires_in": 86400,
    "user": {
      "user_id": "123456",
      "username": "test_user",
      "email": "user@example.com"
    }
  }
}
```

### 2.3 刷新令牌
```http
POST /auth/refresh
```

**请求头**:
```
Authorization: Bearer <access_token>
```

**响应**:
```json
{
  "code": 200,
  "message": "令牌刷新成功",
  "data": {
    "access_token": "new_token_here",
    "expires_in": 86400
  }
}
```

## 3. 视频管理接口

### 3.1 获取上传凭证
```http
GET /videos/upload-token
```

**请求头**:
```
Authorization: Bearer <access_token>
```

**查询参数**:
- `filename`: 文件名
- `file_size`: 文件大小（字节）
- `file_type`: 文件类型（mp4/mov/avi）

**响应**:
```json
{
  "code": 200,
  "message": "上传凭证获取成功",
  "data": {
    "upload_id": "upload_123456",
    "upload_url": "https://api.videoclip.com/v1/videos/upload",
    "chunk_size": 5242880,
    "expires_at": "2024-01-15T11:30:00Z"
  }
}
```

### 3.2 分片上传
```http
POST /videos/upload
```

**请求头**:
```
Authorization: Bearer <access_token>
Content-Type: multipart/form-data
```

**请求体**:
```
upload_id: string
chunk_index: integer
total_chunks: integer
chunk_data: binary
```

**响应**:
```json
{
  "code": 200,
  "message": "分片上传成功",
  "data": {
    "upload_id": "upload_123456",
    "chunk_index": 1,
    "uploaded": true
  }
}
```

### 3.3 完成上传
```http
POST /videos/upload/complete
```

**请求体**:
```json
{
  "upload_id": "upload_123456",
  "filename": "demo.mp4",
  "total_chunks": 10
}
```

**响应**:
```json
{
  "code": 200,
  "message": "文件上传完成",
  "data": {
    "video_id": "video_123456",
    "filename": "demo.mp4",
    "file_size": 52428800,
    "duration": 300.5,
    "status": "uploaded",
    "created_at": "2024-01-15T10:30:00Z"
  }
}
```

### 3.4 获取视频列表
```http
GET /videos
```

**查询参数**:
- `page`: 页码（默认1）
- `page_size`: 每页大小（默认20）
- `status`: 状态筛选（uploaded/processing/completed/failed）
- `sort`: 排序字段（created_at/duration/file_size）
- `order`: 排序方向（asc/desc）

**响应**:
```json
{
  "code": 200,
  "message": "获取成功",
  "data": {
    "items": [
      {
        "video_id": "video_123456",
        "filename": "demo.mp4",
        "file_size": 52428800,
        "duration": 300.5,
        "status": "uploaded",
        "thumbnail": "https://cdn.videoclip.com/thumbnails/video_123456.jpg",
        "created_at": "2024-01-15T10:30:00Z"
      }
    ],
    "total": 1,
    "page": 1,
    "page_size": 20,
    "total_pages": 1
  }
}
```

### 3.5 获取视频详情
```http
GET /videos/{video_id}
```

**路径参数**:
- `video_id`: 视频ID

**响应**:
```json
{
  "code": 200,
  "message": "获取成功",
  "data": {
    "video_id": "video_123456",
    "filename": "demo.mp4",
    "file_size": 52428800,
    "duration": 300.5,
    "status": "uploaded",
    "file_path": "videos/2024/01/video_123456.mp4",
    "thumbnail": "https://cdn.videoclip.com/thumbnails/video_123456.jpg",
    "metadata": {
      "width": 1920,
      "height": 1080,
      "frame_rate": 30,
      "bitrate": 2000000
    },
    "created_at": "2024-01-15T10:30:00Z"
  }
}
```

### 3.6 删除视频
```http
DELETE /videos/{video_id}
```

**响应**:
```json
{
  "code": 200,
  "message": "视频删除成功"
}
```

## 4. 视频处理接口

### 4.1 提交处理任务
```http
POST /videos/{video_id}/process
```

**请求体**:
```json
{
  "config": {
    "custom_prompt": "你是一个视频srt字幕分析剪辑器，输入视频的srt字幕，你需要依次按照钩子(电商术语)、材质介绍、穿搭效果、促成交这四个维度来筛选视频内容，并将其中的精彩且尽可能连续的片段并裁剪出来，将片段中在时间上连续的多个句子及它们的时间戳合并为一条，注意确保文字与时间戳的正确匹配。最终生成的视频长度在60s 左右。输出需严格按照如下格式：1. [开始时间-结束时间] 文本，注意其中的连接符是'-'",
    "selling_points": ["hook", "material", "effect", "promotion"],
    "min_duration": 30,
    "max_duration": 180,
    "output_resolution": "1080p",
    "quality": "high",
    "watermark": {
      "enabled": true,
      "type": "text",
      "content": "VideoClip",
      "position": "bottom-right",
      "opacity": 0.7
    },
    "subtitle": {
      "enabled": true,
      "style": {
        "font_size": 24,
        "color": "#FFFFFF",
        "background": "#000000",
        "position": "bottom"
      }
    },
    "intro": {
      "enabled": false,
      "template_id": null
    },
    "outro": {
      "enabled": false,
      "template_id": null
    }
  }
}
```

**响应**:
```json
{
  "code": 200,
  "message": "处理任务提交成功",
  "data": {
    "task_id": "task_123456",
    "video_id": "video_123456",
    "status": "pending",
    "estimated_duration": 600,
    "created_at": "2024-01-15T10:30:00Z"
  }
}
```

### 4.2 获取处理状态
```http
GET /tasks/{task_id}
```

**响应**:
```json
{
  "code": 200,
  "message": "获取成功",
  "data": {
    "task_id": "task_123456",
    "video_id": "video_123456",
    "status": "processing",
    "progress": 45,
    "current_step": "语音识别中",
    "estimated_remaining": 300,
    "error_message": null,
    "created_at": "2024-01-15T10:30:00Z",
    "updated_at": "2024-01-15T10:35:00Z"
  }
}
```

### 4.3 获取处理结果
```http
GET /tasks/{task_id}/result
```

**响应**:
```json
{
  "code": 200,
  "message": "获取成功",
  "data": {
    "task_id": "task_123456",
    "status": "completed",
    "segments": [
      {
        "segment_id": "seg_001",
        "selling_point_type": "hook",
        "start_time": 0,
        "end_time": 45,
        "duration": 45,
        "confidence": 0.85,
        "description": "吸引人的开场白介绍产品亮点",
        "file_path": "processed/2024/01/seg_001.mp4",
        "download_url": "https://api.videoclip.com/v1/videos/download/seg_001"
      },
      {
        "segment_id": "seg_002",
        "selling_point_type": "material",
        "start_time": 120,
        "end_time": 180,
        "duration": 60,
        "confidence": 0.92,
        "description": "详细介绍产品材质和工艺",
        "file_path": "processed/2024/01/seg_002.mp4",
        "download_url": "https://api.videoclip.com/v1/videos/download/seg_002"
      }
    ],
    "total_segments": 2,
    "processing_duration": 420,
    "completed_at": "2024-01-15T10:37:00Z"
  }
}
```

### 4.4 重新处理任务
```http
POST /tasks/{task_id}/retry
```

**响应**:
```json
{
  "code": 200,
  "message": "任务重新提交成功",
  "data": {
    "task_id": "task_123456",
    "status": "pending",
    "retry_count": 1
  }
}
```

## 5. 下载接口

### 5.1 生成下载链接
```http
POST /videos/download
```

**请求体**:
```json
{
  "segment_ids": ["seg_001", "seg_002"],
  "format": "zip"
}
```

**响应**:
```json
{
  "code": 200,
  "message": "下载链接生成成功",
  "data": {
    "download_id": "dl_123456",
    "download_url": "https://api.videoclip.com/v1/download/dl_123456",
    "expires_at": "2024-01-22T10:30:00Z",
    "file_size": 104857600
  }
}
```

### 5.2 下载文件
```http
GET /download/{download_id}
```

**响应**: 二进制文件流

### 5.3 获取下载记录
```http
GET /downloads
```

**查询参数**:
- `page`: 页码
- `page_size`: 每页大小

**响应**:
```json
{
  "code": 200,
  "message": "获取成功",
  "data": {
    "items": [
      {
        "download_id": "dl_123456",
        "segment_count": 2,
        "file_size": 104857600,
        "status": "ready",
        "expires_at": "2024-01-22T10:30:00Z",
        "created_at": "2024-01-15T10:30:00Z"
      }
    ],
    "total": 1,
    "page": 1,
    "page_size": 20,
    "total_pages": 1
  }
}
```

## 6. 模板管理接口

### 6.1 获取片头片尾模板
```http
GET /templates
```

**查询参数**:
- `type`: 模板类型（intro/outro）

**响应**:
```json
{
  "code": 200,
  "message": "获取成功",
  "data": [
    {
      "template_id": "tpl_001",
      "name": "简约风格片头",
      "type": "intro",
      "duration": 5,
      "preview_url": "https://cdn.videoclip.com/templates/tpl_001_preview.jpg",
      "file_url": "https://cdn.videoclip.com/templates/tpl_001.mp4"
    }
  ]
}
```

### 6.2 上传自定义模板
```http
POST /templates
```

**请求体**:
```json
{
  "name": "自定义片头",
  "type": "intro",
  "file_url": "https://user-uploads.com/template.mp4"
}
```

**响应**:
```json
{
  "code": 201,
  "message": "模板上传成功",
  "data": {
    "template_id": "tpl_user_001",
    "name": "自定义片头",
    "type": "intro",
    "status": "processing"
  }
}
```

## 7. 用户配置接口

### 7.1 获取用户配置
```http
GET /user/config
```

**响应**:
```json
{
  "code": 200,
  "message": "获取成功",
  "data": {
    "default_config": {
      "selling_points": ["hook", "material", "effect", "promotion"],
      "min_duration": 30,
      "max_duration": 180,
      "output_resolution": "1080p",
      "quality": "high"
    },
    "watermark_templates": [
      {
        "id": "wm_001",
        "name": "默认水印",
        "type": "text",
        "content": "VideoClip",
        "position": "bottom-right"
      }
    ],
    "usage_quota": {
      "monthly_limit": 20,
      "used_this_month": 5,
      "remaining": 15
    }
  }
}
```

### 7.2 更新用户配置
```http
PUT /user/config
```

**请求体**:
```json
{
  "default_config": {
    "selling_points": ["hook", "material"],
    "min_duration": 45,
    "max_duration": 120,
    "output_resolution": "720p",
    "quality": "medium"
  }
}
```

**响应**:
```json
{
  "code": 200,
  "message": "配置更新成功"
}
```

## 8. 统计接口

### 8.1 获取处理统计
```http
GET /statistics/processing
```

**查询参数**:
- `start_date`: 开始日期（YYYY-MM-DD）
- `end_date`: 结束日期（YYYY-MM-DD）

**响应**:
```json
{
  "code": 200,
  "message": "获取成功",
  "data": {
    "total_videos": 50,
    "total_segments": 150,
    "total_duration": 7200,
    "success_rate": 0.96,
    "average_processing_time": 300,
    "daily_stats": [
      {
        "date": "2024-01-15",
        "videos_processed": 5,
        "segments_generated": 15,
        "processing_time": 1500
      }
    ]
  }
}
```

## 9. 错误码定义

### 9.1 HTTP 状态码
- `200`: 请求成功
- `201`: 创建成功
- `400`: 请求参数错误
- `401`: 未授权
- `403`: 禁止访问
- `404`: 资源不存在
- `409`: 资源冲突
- `422`: 请求参数验证失败
- `429`: 请求频率超限
- `500`: 服务器内部错误
- `503`: 服务不可用

### 9.2 业务错误码

#### 认证相关 (1xxx)
- `1001`: 用户名或密码错误
- `1002`: 令牌已过期
- `1003`: 令牌无效
- `1004`: 用户不存在
- `1005`: 用户已存在

#### 文件相关 (2xxx)
- `2001`: 文件格式不支持
- `2002`: 文件大小超限
- `2003`: 文件上传失败
- `2004`: 文件不存在
- `2005`: 文件已损坏

#### 处理相关 (3xxx)
- `3001`: 处理队列已满
- `3002`: 处理任务不存在
- `3003`: 处理失败
- `3004`: 配置参数无效
- `3005`: 卖点识别失败

#### 配额相关 (4xxx)
- `4001`: 月度配额不足
- `4002`: 存储空间不足
- `4003`: 并发处理数超限

#### 系统相关 (5xxx)
- `5001`: AI服务不可用
- `5002`: 存储服务异常
- `5003`: 数据库连接失败

### 9.3 错误响应示例
```json
{
  "code": 2001,
  "message": "文件格式不支持，仅支持 MP4、MOV、AVI 格式",
  "error_code": "UNSUPPORTED_FORMAT",
  "details": {
    "supported_formats": ["mp4", "mov", "avi"],
    "received_format": "webm"
  },
  "timestamp": "2024-01-15T10:30:00Z"
}
```

## 10. 限流策略

### 10.1 接口限流
- **上传接口**: 10次/分钟
- **处理接口**: 5次/分钟
- **查询接口**: 100次/分钟
- **下载接口**: 20次/分钟

### 10.2 用户限流
- **免费用户**: 月度20个视频
- **付费用户**: 月度100个视频
- **企业用户**: 无限制

## 11. Webhook 通知

### 11.1 处理完成通知
```http
POST {webhook_url}
```

**请求体**:
```json
{
  "event": "processing.completed",
  "task_id": "task_123456",
  "video_id": "video_123456",
  "user_id": "123456",
  "status": "completed",
  "segments_count": 3,
  "processing_duration": 420,
  "timestamp": "2024-01-15T10:37:00Z"
}
```

### 11.2 处理失败通知
```json
{
  "event": "processing.failed",
  "task_id": "task_123456",
  "video_id": "video_123456",
  "user_id": "123456",
  "status": "failed",
  "error_code": "3003",
  "error_message": "视频格式解析失败",
  "timestamp": "2024-01-15T10:35:00Z"
}
```

## 12. SDK 示例

### 12.1 JavaScript SDK
```javascript
const VideoClipAPI = require('@videoclip/api-sdk');

const client = new VideoClipAPI({
  baseURL: 'https://api.videoclip.com/v1',
  apiKey: 'your_api_key'
});

// 上传视频
const video = await client.videos.upload({
  filename: 'demo.mp4',
  file: fileBuffer
});

// 提交处理任务
const task = await client.videos.process(video.video_id, {
  selling_points: ['hook', 'material'],
  min_duration: 30,
  max_duration: 120
});

// 获取处理结果
const result = await client.tasks.getResult(task.task_id);
```

### 12.2 Python SDK
```python
from videoclip_sdk import VideoClipClient

client = VideoClipClient(
    base_url='https://api.videoclip.com/v1',
    api_key='your_api_key'
)

# 上传视频
with open('demo.mp4', 'rb') as f:
    video = client.videos.upload(
        filename='demo.mp4',
        file=f
    )

# 提交处理任务
task = client.videos.process(
    video_id=video['video_id'],
    config={
        'selling_points': ['hook', 'material'],
        'min_duration': 30,
        'max_duration': 120
    }
)

# 获取处理结果
result = client.tasks.get_result(task['task_id'])
```

这份API文档提供了完整的接口规范，包含了认证、视频管理、处理、下载等所有核心功能的详细说明，为前端和第三方开发者提供了清晰的集成指导。 
