FROM filen/cli:v0.0.29

# Install bash
RUN apk add --no-cache bash

# Install curl
RUN apk add --no-cache curl

# Set shell
SHELL ["/bin/ash", "-o", "pipefail", "-c"]

# Install bashio
ARG BASHIO_VERSION="v0.16.3"
RUN curl -J -L -o /tmp/bashio.tar.gz \
        "https://github.com/hassio-addons/bashio/archive/${BASHIO_VERSION}.tar.gz" \
    && mkdir /tmp/bashio \
    && tar zxvf \
        /tmp/bashio.tar.gz \
        --strip 1 -C /tmp/bashio \
    \
    && mv /tmp/bashio/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio

# Install Tini to manage processes
RUN apk add --no-cache tini

# Copy and make the run.sh script executable
COPY run.sh /run.sh
RUN chmod +x /run.sh

WORKDIR /filen-cli

# Use Tini as the entrypoint to handle processes
ENTRYPOINT ["tini", "--"]

# Run Filen through the copied run.sh script
CMD ["bash /run.sh"]
