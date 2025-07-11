# VideoClip Docker-Compose 部署指南

本文档提供在Ubuntu系统中通过docker-compose部署VideoClip项目的完整操作流程。

## 前置要求

- Ubuntu系统（推荐18.04+）
- 已安装Docker和Docker Compose
- 服务器配置：最低2CPU + 4GB内存（推荐4CPU + 8GB+）

## 部署流程

### 1. 项目准备

```bash
# 克隆项目到您的Ubuntu服务器
git clone https://github.com/czxk579/VideoClip.git
cd VideoClip
```

### 2. 配置后端环境文件

后端配置文件 VideoClip/clip-backend/.env.prod 文件内容如下：

```bash
# -------- 应用配置 --------
# 应用运行环境
APP_ENV = 'prod'
# 应用名称
APP_NAME = 'VideoClipBackend'
# 应用代理路径
APP_ROOT_PATH = '/server'
# 应用主机
APP_HOST = '0.0.0.0'
# 应用端口
APP_PORT = 9099
# 应用版本
APP_VERSION= '1.5.1'
# 应用是否开启热重载
APP_RELOAD = false
# 进程数量，根据自己的服务器核心数修改，建议 CPU 核心数 × 2 + 1
APP_WORKERS = 5
# 应用是否开启IP归属区域查询
APP_IP_LOCATION_QUERY = false
# 应用是否允许账号同时登录
APP_SAME_TIME_LOGIN = true

# -------- Jwt配置 --------
# Jwt秘钥
JWT_SECRET_KEY = 'b01c66dc2c58dc6a0aabfe2144256be36226de378bf87f72c0c795dda67f4d55'
# Jwt算法
JWT_ALGORITHM = 'HS256'
# 令牌过期时间（一年）
JWT_EXPIRE_MINUTES = 525600
# redis中令牌过期时间（一年）
JWT_REDIS_EXPIRE_MINUTES = 525600


# -------- 数据库配置 --------
# 数据库类型，'mysql'
DB_TYPE = 'mysql'
# 数据库主机
DB_HOST = 'videoclip-mysql'
# 数据库端口
DB_PORT = 3306
# 数据库用户名
DB_USERNAME = 'root'
# 数据库密码
DB_PASSWORD = 'root'
# 数据库名称
DB_DATABASE = 'video_clip_data'
# 是否开启sqlalchemy 日志
DB_ECHO = true
# 允许溢出连接池大小的最大连接数
DB_MAX_OVERFLOW = 10
# 连接池大小，0表示连接数无限制
DB_POOL_SIZE = 500
# 连接回收时间（单位：秒）
DB_POOL_RECYCLE = 3600
# 连接池中没有线程可用时，最多等待的时间（单位：秒）
DB_POOL_TIMEOUT = 30

# -------- Redis配置 --------
# Redis主机
REDIS_HOST = 'videoclip-redis'
# Redis端口
REDIS_PORT = 6379
# Redis用户名
REDIS_USERNAME = ''
# Redis密码
REDIS_PASSWORD = ''
# Redis数据库
REDIS_DATABASE = 2

# OpenAI
OPENAI_API_KEY = 'xxxx'
OPENAI_API_URL = 'xxxx'
OPENAI_API_MODEL = 'xxxx'

# 配置启动的python路径
PYTHON_PATH = 'python'

# 上传方式, local或者oss
UPLOAD_METHOD = "local"
```

### 3. 构建前端

```bash
# 进入前端目录
cd clip-frontend

# 安装Node.js和pnpm（如果未安装）
# Ubuntu上安装Node.js 18.x
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# 安装pnpm
npm install -g pnpm

# 创建前端生产环境配置
cat > .env.production << 'EOF'
# 页面标题
VITE_APP_TITLE = VideoClip Admin

# 生产环境配置
VITE_APP_ENV = 'production'

# VideoClip Admin/生产环境
# VITE_APP_BASE_API = 'https://videoclip-api.igiggle.cn'

## VideoClip Admin/生产环境 Docker
VITE_APP_BASE_API = '/server'

# 是否在打包时开启压缩，支持 gzip 和 brotli
VITE_BUILD_COMPRESS = gzip
EOF

# 安装前端依赖
pnpm install

# 构建前端（重要：必须在docker启动前完成）
pnpm run build:prod

# 验证构建结果
ls -la dist/

# 返回项目根目录
cd ..
```

### 4. 启动Docker服务

```bash
# 进入docker目录
cd docker

# 创建必要的数据目录
mkdir -p data/mysql-8.3.0/lib data/mysql-8.3.0/log data/redis log/nginx log/server

# 设置MySQL数据目录权限（重要）
sudo chown -R 999:999 data/mysql-8.3.0

# 启动所有服务
docker compose up -d

# 查看容器启动状态
docker ps
```

### 5. 验证部署

```bash
# 等待所有服务启动（特别是MySQL初始化）
# 查看MySQL日志，等待看到 "ready for connections"
docker compose logs -f videoclip-mysql

# 另开终端查看FastAPI日志
docker compose logs -f videoclip-fastapi

# 检查所有容器状态
docker compose ps

# 测试数据库连接
docker exec -it videoclip-mysql mysql -uroot -proot -e "SHOW DATABASES;"
```

## 🔥 关键注意事项

### ⚠️ 必须注意的要点

1. **前端构建顺序**

   ```bash
   # 必须先构建前端，再启动docker
   # 因为nginx容器会挂载 ../clip-frontend/dist 目录
   pnpm run build:prod  # 先执行
   docker compose up -d  # 后执行
   ```
2. **首次启动等待时间**

   ```bash
   # MySQL首次启动需要3-5分钟初始化数据库
   # 会自动执行 clip-backend/sql/video_clip_data.sql 文件
   ```

# 监控日志直到看到 "ready for connections"

docker compose logs -f videoclip-mysql | grep "ready for connections"

```
3. **端口冲突检查**

   ```bash
   # 检查必要端口是否被占用
   sudo netstat -tlnp | grep -E ':(80|3306|6379)\s'

   # 如果有冲突，停止占用服务
   sudo systemctl stop apache2   # 如果有Apache
   sudo systemctl stop nginx     # 如果有系统nginx
   sudo systemctl stop mysql     # 如果有系统MySQL
```

4. **环境变量配置**

   ```bash
   # 后端使用Docker容器名称作为主机名
   DB_HOST=videoclip-mysql     # ✅ 正确
   DB_HOST=localhost      # ❌ 错误
   ```

### 🔧 常见问题排查

1. **容器启动失败**

   ```bash
   # 查看具体错误信息
   docker compose logs [服务名]

   # 重启单个服务
   docker compose restart videoclip-fastapi
   ```
2. **前端页面无法访问**

   ```bash
   # 检查前端构建是否成功
   ls -la clip-frontend/dist/index.html

   # 检查nginx配置
   docker exec -it videoclip-nginx nginx -t
   ```
3. **数据库连接问题**

   ```bash
   # 手动测试数据库连接
   docker exec -it videoclip-mysql mysql -uroot -proot

   # 检查环境文件
   cat clip-backend/.env.prod
   ```

### 🎯 成功验证

部署成功后，在浏览器访问：

- 地址：`http://your-ubuntu-server-ip`
- 用户名：`admin`
- 密码：`admin123`

### 📱 生产环境安全优化

```bash
# 1. 编辑 docker-compose.yml，移除开发端口
# 注释以下行（安全考虑）：
# - "6379:6379"  # Redis端口
# - "3306:3306"  # MySQL端口

# 2. 配置防火墙
sudo ufw enable
sudo ufw allow 80
sudo ufw allow 22  # SSH端口

# 3. 修改默认密码（可选）
# 修改 .env.prod 中的数据库密码和JWT密钥
```

### 📊 资源监控

```bash
# 查看容器资源使用情况
docker stats

# 查看磁盘使用
df -h

# 查看日志
docker compose logs --tail=100
```

## 架构说明

### 服务组件

- **videoclip-nginx**: Nginx反向代理，处理前端静态文件和API转发
- **videoclip-fastapi**: FastAPI后端服务
- **videoclip-mysql**: MySQL 8.3.0数据库
- **videoclip-redis**: Redis 8.0.2缓存服务

### 网络配置

所有服务通过内部 `app`网络通信：

- 前端：通过nginx在80端口提供服务
- 后端API：通过nginx代理转发到FastAPI的9099端口
- 数据库和缓存：内部网络访问

### 数据持久化

- MySQL数据：`./data/mysql-8.3.0/lib`
- Redis数据：`./data/redis`
- 日志文件：`./log/`目录

按照以上流程操作，您就可以在Ubuntu服务器上成功部署VideoClip项目了！
