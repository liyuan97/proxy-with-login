FROM m1k1o/neko:chromium

# 设置环境变量
ENV NEKO_SCREEN=1920x1080@30
ENV NEKO_PASSWORD=neko123
ENV NEKO_PASSWORD_ADMIN=admin123
ENV NEKO_LOCKS=control

# Render 会设置 PORT 环境变量，Neko 需要监听这个端口
ENV NEKO_BIND=:8080

# 暴露端口
EXPOSE 8080

# 启动 Neko
CMD ["/usr/bin/supervisord", "-c", "/etc/neko/supervisord.conf"]
