FROM n8nio/n8n:latest
USER node
ENTRYPOINT ["n8n", "start"]
