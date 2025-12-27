FROM m1k1o/neko:chromium

# 设置环境变量
ENV NEKO_SCREEN=1920x1080@30
ENV NEKO_PASSWORD=neko123
ENV NEKO_PASSWORD_ADMIN=admin123
ENV NEKO_LOCKS=control
ENV NEKO_BIND=:8080

# 暴露端口
EXPOSE 8080

# 创建自定义启动脚本
RUN echo '#!/bin/bash\n\
# 修改 chromium supervisord 配置\n\
sed -i "s|command=chromium|command=chromium --no-sandbox --disable-dev-shm-usage --disable-setuid-sandbox --disable-gpu|g" /etc/neko/supervisord/chromium.conf\n\
# 启动 supervisord\n\
exec /usr/bin/supervisord -c /etc/neko/supervisord.conf\n\
' > /entrypoint.sh && chmod +x /entrypoint.sh

# 使用自定义启动脚本
CMD ["/entrypoint.sh"]
