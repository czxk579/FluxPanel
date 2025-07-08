# FluxPanel Docker-Compose 部署指南

本文档提供在Ubuntu系统中通过docker-compose部署FluxPanel项目的完整操作流程。

## 前置要求

- Ubuntu系统（推荐18.04+）
- 已安装Docker和Docker Compose
- 服务器配置：最低2CPU + 4GB内存（推荐4CPU + 8GB+）

## 部署流程

### 1. 项目准备

```bash
# 克隆项目到您的Ubuntu服务器
git clone https://github.com/czxk579/FluxPanel.git
cd FluxPanel
```

### 2. 配置后端环境文件

根据README.md的说明，需要创建后端环境配置文件：

```bash
# 进入后端目录
cd flux-backend

# 创建生产环境配置文件 .env.prod
cat > .env.prod << 'EOF'
# 应用配置
APP_ENV=prod
APP_NAME=FluxServer
APP_HOST=0.0.0.0
APP_PORT=9099
APP_ROOT_PATH=/server

# 数据库配置 (使用Docker容器名称)
DB_TYPE=mysql
DB_HOST=flux-mysql
DB_PORT=3306
DB_USERNAME=root
DB_PASSWORD=root
DB_DATABASE=flux_data

# Redis配置 (使用Docker容器名称)
REDIS_HOST=flux-redis
REDIS_PORT=6379
REDIS_USERNAME=
REDIS_PASSWORD=
REDIS_DATABASE=0

# JWT配置
JWT_SECRET_KEY=b01c66dc2c58dc6a0aabfe2144256be36226de378bf87f72c0c795dda67f4d55
JWT_ALGORITHM=HS256
JWT_EXPIRE_MINUTES=1440

# 上传配置
UPLOAD_METHOD=local
EOF

# 返回项目根目录
cd ..
```

### 3. 构建前端

```bash
# 进入前端目录
cd flux-frontend

# 安装Node.js和pnpm（如果未安装）
# Ubuntu上安装Node.js 18.x
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# 安装pnpm
npm install -g pnpm

# 创建前端生产环境配置
cat > .env.production << 'EOF'
# 生产环境API地址
VITE_APP_BASE_API=/server
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
docker compose logs -f flux-mysql

# 另开终端查看FastAPI日志
docker compose logs -f flux-fastapi

# 检查所有容器状态
docker compose ps

# 测试数据库连接
docker exec -it flux-mysql mysql -uroot -proot -e "SHOW DATABASES;"
```

## 🔥 关键注意事项

### ⚠️ 必须注意的要点

1. **前端构建顺序**

   ```bash
   # 必须先构建前端，再启动docker
   # 因为nginx容器会挂载 ../flux-frontend/dist 目录
   pnpm run build:prod  # 先执行
   docker compose up -d  # 后执行
   ```
2. **首次启动等待时间**

   ```bash
   # MySQL首次启动需要3-5分钟初始化数据库
   # 会自动执行 flux-backend/sql/flux-data.sql 文件
   # 监控日志直到看到 "ready for connections"
   docker compose logs -f flux-mysql | grep "ready for connections"
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
   DB_HOST=flux-mysql     # ✅ 正确
   DB_HOST=localhost      # ❌ 错误
   ```

### 🔧 常见问题排查

1. **容器启动失败**

   ```bash
   # 查看具体错误信息
   docker compose logs [服务名]

   # 重启单个服务
   docker compose restart flux-fastapi
   ```
2. **前端页面无法访问**

   ```bash
   # 检查前端构建是否成功
   ls -la flux-frontend/dist/index.html

   # 检查nginx配置
   docker exec -it flux-nginx nginx -t
   ```
3. **数据库连接问题**

   ```bash
   # 手动测试数据库连接
   docker exec -it flux-mysql mysql -uroot -proot

   # 检查环境文件
   cat flux-backend/.env.prod
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

- **flux-nginx**: Nginx反向代理，处理前端静态文件和API转发
- **flux-fastapi**: FastAPI后端服务
- **flux-mysql**: MySQL 8.3.0数据库
- **flux-redis**: Redis 8.0.2缓存服务

### 网络配置

所有服务通过内部 `app`网络通信：

- 前端：通过nginx在80端口提供服务
- 后端API：通过nginx代理转发到FastAPI的9099端口
- 数据库和缓存：内部网络访问

### 数据持久化

- MySQL数据：`./data/mysql-8.3.0/lib`
- Redis数据：`./data/redis`
- 日志文件：`./log/`目录

按照以上流程操作，您就可以在Ubuntu服务器上成功部署FluxPanel项目了！
