FROM n8nio/n8n:latest
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
USER root
RUN mkdir -p /mnt/mydisk/n8nData/.n8n && \
    chown -R node:node /mnt/mydisk/n8nData && \
    chmod -R 755 /mnt/mydisk/n8nData && \
    chmod +x /usr/local/bin/entrypoint.sh
USER node
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
