FROM m1k1o/neko:chromium

# 设置环境变量
ENV NEKO_SCREEN=1920x1080@30
ENV NEKO_PASSWORD=neko123
ENV NEKO_PASSWORD_ADMIN=admin123
ENV NEKO_LOCKS=control
ENV NEKO_BIND=:8080

# Chromium 启动参数（解决 Render 权限问题）
ENV NEKO_BROWSER_ARGS="--no-sandbox --disable-dev-shm-usage --disable-setuid-sandbox"

# 暴露端口
EXPOSE 8080

# 启动 Neko
CMD ["/usr/bin/supervisord", "-c", "/etc/neko/supervisord.conf"]
