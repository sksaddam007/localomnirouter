FROM diegosouzapw/omniroute:latest

# Bind to all network interfaces
ENV OMNIROUTE_SERVER_HOST=0.0.0.0
ENV HOSTNAME=0.0.0.0
ENV HOST=0.0.0.0

# Hugging Face Spaces expects traffic on port 7860
ENV OMNIROUTE_PORT=7860
ENV PORT=7860

EXPOSE 7860
