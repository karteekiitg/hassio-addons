FROM filen/cli:v0.0.29

# Install Tini to manage processes
RUN apk add --no-cache tini

# Copy and make the run.sh script executable
COPY run.sh /run.sh
RUN chmod +x /run.sh

WORKDIR /filen-cli

# Use Tini as the entrypoint to handle processes
ENTRYPOINT ["tini", "--"]

# Run Filen through the copied run.sh script
CMD ["/run.sh"]
