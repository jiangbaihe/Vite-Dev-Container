# Vite-Dev-Container

镜像内包含NodeJs 20、pnpm、nginx，可作为开发容器启动，也可直接用于生产部署

## 使用

### 测试容器

```bash
docker run --pull always --rm -it --name vite-dev-container -p 80:80 ghcr.io/jiangbaihe/vite-dev-container
```
