FROM diegosouzapw/omniroute:latest

# Bind to all network interfaces so Render/cloud proxies can detect the open port
ENV OMNIROUTE_SERVER_HOST=0.0.0.0
ENV HOSTNAME=0.0.0.0
ENV HOST=0.0.0.0

# Set listening port to 10000 (Render default)
ENV OMNIROUTE_PORT=10000
ENV PORT=10000

# Memory tuning for 512MB RAM free instances
# Restrict V8 heap so garbage collection triggers aggressively before hitting the 512MB ceiling
ENV OMNIROUTE_MEMORY_MB=350
ENV NODE_OPTIONS="--max-old-space-size=350"

# Disable heavy background sync tasks that spike memory
ENV ARENA_ELO_SYNC_ENABLED=false
ENV MODELS_DEV_SYNC_ENABLED=0

EXPOSE 10000
