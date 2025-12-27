# Neko 远程浏览器代理

通过远程浏览器分享登录态，让其他人可以直接访问你的订单页面并完成支付。

## 🚀 快速部署（Render.com - 免费）

### 1. 访问 Render
https://render.com/

### 2. 使用 GitHub 登录

### 3. 创建 Web Service
- 点击 "New +" → "Web Service"
- 连接这个 GitHub 仓库
- Render 会自动检测配置
- 点击 "Create Web Service"

### 4. 等待部署完成（3-5 分钟）

### 5. 访问你的浏览器
https://your-app.onrender.com

**默认密码：** `neko123`

---

## 📖 使用方式

### 你的操作：
1. 访问部署的 URL
2. 输入密码登录
3. 在浏览器中打开票务网站并登录
4. 抢到票后，保持页面打开
5. 分享这个 URL 给朋友

### 朋友的操作：
1. 打开你分享的 URL
2. 输入密码（你告诉他的）
3. 看到实时浏览器画面
4. 可以操作（点支付、填信息等）

---

## ⚙️ 自定义配置

在 Render Dashboard 的 Environment 标签中可以修改：

```
NEKO_PASSWORD=your_custom_password
NEKO_PASSWORD_ADMIN=your_admin_password
NEKO_SCREEN=1920x1080@30
```

---

## 💰 成本

- **免费计划：** $0/月（有限制）
  - 15 分钟无活动后休眠
  - 休眠后首次访问需等待 30-60 秒
  
- **付费计划：** $7/月
  - 始终运行，无休眠

---

## 📚 详细文档

查看 [README-RENDER.md](./README-RENDER.md) 了解更多细节。

---

## 🛠️ 技术栈

- [Neko](https://github.com/m1k1o/neko) - 远程浏览器
- [Render.com](https://render.com/) - 部署平台
- Docker - 容器化

---

## 📝 License

MIT
