FROM m1k1o/neko:chromium

# 设置环境变量
ENV NEKO_SCREEN=1920x1080@30
ENV NEKO_PASSWORD=neko123
ENV NEKO_PASSWORD_ADMIN=admin123
ENV NEKO_LOCKS=control
ENV NEKO_BIND=:8080

# 暴露端口
EXPOSE 8080

# 修改 supervisord 配置以添加 --no-sandbox 参数
RUN sed -i 's/^command=chromium$/command=chromium --no-sandbox --disable-dev-shm-usage --disable-setuid-sandbox --disable-gpu/' /etc/neko/supervisord/chromium.conf

# 启动 Neko
CMD ["/usr/bin/supervisord", "-c", "/etc/neko/supervisord.conf"]
