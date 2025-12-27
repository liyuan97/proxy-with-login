# Render.com 部署指南

## 🚀 一键部署

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

---

## 📝 手动部署步骤

### 1. 注册/登录 Render

访问：https://render.com/
使用 GitHub 账号登录

### 2. 创建新的 Web Service

1. 点击 "New +" → "Web Service"
2. 选择 "Connect a repository"
3. 授权 Render 访问你的 GitHub
4. 选择 `proxy-with-login` 仓库

### 3. 配置服务

Render 会自动检测到 `render.yaml`，但你也可以手动配置：

- **Name:** `neko-browser-proxy`（或任意名称）
- **Environment:** `Docker`
- **Branch:** `main`
- **Dockerfile Path:** `./Dockerfile`
- **Plan:** `Free`（免费计划）

### 4. 环境变量（可选）

默认配置已经够用，如果想自定义密码：

```
NEKO_PASSWORD=your_password
NEKO_PASSWORD_ADMIN=your_admin_password
```

### 5. 部署

点击 "Create Web Service"

Render 会：
- ✅ 自动构建 Docker 镜像
- ✅ 部署到免费服务器
- ✅ 分配一个 URL：`https://neko-browser-proxy.onrender.com`

**等待时间：** 约 3-5 分钟

---

## 📍 访问

部署成功后：

**URL:** https://neko-browser-proxy.onrender.com

**密码:** `neko123`

---

## ⚠️ Render 免费计划限制

### 特点：
- ✅ 完全免费
- ✅ 750 小时/月免费运行时间
- ⚠️ 15 分钟无活动后自动休眠
- ⚠️ 休眠后首次访问需要等待 30-60 秒唤醒

### 休眠说明：

如果 15 分钟没有人访问，服务会进入休眠状态。

**唤醒方式：**
1. 访问 URL
2. 等待 30-60 秒
3. 页面加载完成

**避免休眠（可选）：**
升级到付费计划（$7/月）即可保持始终运行

---

## 💰 成本对比

| 计划 | 价格 | 特点 |
|------|------|------|
| **Free** | $0 | 15分钟后休眠，750小时/月 |
| **Starter** | $7/月 | 始终运行，无休眠 |
| **Standard** | $25/月 | 更多资源 |

**推荐：** 先用免费计划测试，需要稳定性再升级

---

## 🔧 常用命令

### 查看日志
在 Render Dashboard → 你的服务 → "Logs" 标签

### 重新部署
1. 方式1：推送代码到 GitHub（自动部署）
2. 方式2：Dashboard 点击 "Manual Deploy"

### 修改环境变量
Dashboard → "Environment" 标签 → 修改 → "Save Changes"

---

## 🐛 故障排查

### 1. 部署失败

检查构建日志：
- Dashboard → "Events" 标签
- 查看错误信息

### 2. 无法访问

确认服务状态：
- Dashboard 显示 "Live" 绿色图标
- 如果显示 "Sleeping"，访问 URL 唤醒

### 3. WebRTC 连接问题

Render 支持 WebSocket，但 UDP 可能有限制。

如果视频流有问题：
- 检查浏览器控制台错误
- 尝试使用不同的网络环境

---

## 🎯 使用场景

部署成功后：

1. **抢票后分享：**
   - 你在 Neko 浏览器中登录票务网站
   - 抢到票后保持页面打开
   - 分享 Render URL 给朋友
   - 朋友输入密码后可以操作支付

2. **临时使用：**
   - 免费计划适合偶尔使用
   - 15分钟休眠对短期使用影响不大

3. **长期稳定：**
   - 升级到 $7/月计划
   - 服务始终运行，无需等待唤醒

---

## 📚 相关链接

- Render 文档：https://render.com/docs
- Neko 项目：https://github.com/m1k1o/neko
- 问题反馈：https://github.com/yourusername/proxy-with-login/issues

---

## ✅ 下一步

部署成功后，你可以：

1. 测试浏览器功能
2. 尝试登录票务网站
3. 分享给朋友测试
4. 根据需要升级到付费计划

有问题随时问！🚀

