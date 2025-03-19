FROM n8nio/n8n:latest
RUN mkdir -p /mnt/mydisk/n8nData/.n8n && chown -R node:node /mnt/mydisk/n8nData/.n8n
USER node
ENTRYPOINT ["n8n", "start"]
