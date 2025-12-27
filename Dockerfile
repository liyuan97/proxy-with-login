FROM m1k1o/neko:chromium

# 设置环境变量
ENV NEKO_SCREEN=1920x1080@30
ENV NEKO_PASSWORD=neko123
ENV NEKO_PASSWORD_ADMIN=admin123
ENV NEKO_LOCKS=control
ENV NEKO_BIND=:8080

# 暴露端口
EXPOSE 8080

# 直接覆盖 supervisord chromium 配置文件
RUN cat > /etc/neko/supervisord/chromium.conf << 'EOF'
[program:chromium]
environment=HOME="/home/%(ENV_USER)s",USER="%(ENV_USER)s",DISPLAY="%(ENV_DISPLAY)s"
command=chromium
  --no-sandbox
  --disable-dev-shm-usage
  --disable-setuid-sandbox
  --disable-gpu
  --user-data-dir
autorestart=true
stdout_logfile=/dev/fd/1
stdout_logfile_maxbytes=0
redirect_stderr=true
stopasgroup=true
killasgroup=true
EOF

# 启动 Neko
CMD ["/usr/bin/supervisord", "-c", "/etc/neko/supervisord.conf"]
