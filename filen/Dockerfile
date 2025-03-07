FROM filen/cli:v0.0.29

# Install bash
RUN apk add --no-cache bash

# Install curl
RUN apk add --no-cache curl

# Install jq
RUN apk add --no-cache jq

# Set shell
SHELL ["/bin/ash", "-o", "pipefail", "-c"]

# Install Tini to manage processes
RUN apk add --no-cache tini

# Copy and make the run.sh script executable
COPY run.sh /run.sh
RUN chmod +x /run.sh

WORKDIR /filen-cli

# Health check
HEALTHCHECK --start-period=1m --interval=10m \
    CMD curl --fail http://127.0.0.1:443 || exit 1

# Use Tini as the entrypoint to handle processes
ENTRYPOINT ["tini", "--"]

# Run Filen through the copied run.sh script
CMD ["/run.sh"]
