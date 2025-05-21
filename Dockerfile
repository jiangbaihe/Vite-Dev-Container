# 使用 Node.js 20 作为基础镜像
FROM node:20-slim

# 设置工作目录
WORKDIR /app

# 安装 pnpm
RUN npm install -g pnpm

# 安装 nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 复制 nginx 配置文件
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 创建 nginx 服务目录
RUN mkdir -p /usr/share/nginx/html

# 暴露端口
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"] 