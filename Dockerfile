FROM diegosouzapw/omniroute:latest

# Bind to all network interfaces so Render/cloud proxies can detect the open port
ENV OMNIROUTE_SERVER_HOST=0.0.0.0
ENV HOSTNAME=0.0.0.0
ENV HOST=0.0.0.0

# Set listening port to 10000 (Render default)
ENV OMNIROUTE_PORT=10000
ENV PORT=10000

EXPOSE 10000
