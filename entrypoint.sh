#!/bin/sh
echo "Fixing permissions for /mnt/mydisk/n8nData..."
chown -R node:node /mnt/mydisk/n8nData || echo "chown failed"
echo "Starting n8n..."
exec n8n start
