# Use a base image with systemd support
FROM ubuntu:22.04

# Install necessary packages for systemd and other utilities
RUN apt-get update && \
    apt-get install -y \
    systemd \
    systemd-sysv \
    apt-utils \
    wget \
    gnupg \
    logrotate \
    libsnappy1v5 \
    libzmq5 \
    psmisc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Copy .deb packages from the local build folder into the image
COPY ./backend-vanar_2.58.1-satoshilabs-1_amd64.deb /tmp/
COPY ./blockbook-vanar_0.4.0_amd64.deb /tmp/

# RUN mkdir -p /opt/coins
# RUN chmod -R 777 /opt/coins

# Install the .deb packages
# RUN dpkg -i /tmp/*.deb && \

RUN dpkg -i /tmp/backend-vanar_2.58.1-satoshilabs-1_amd64.deb

RUN dpkg -i /tmp/blockbook-vanar_0.4.0_amd64.deb

# RUN for deb in /tmp/*.deb; do dpkg -i $deb && rm $deb; done

# Enable and start your service
RUN systemctl enable backend-vanar.service && \
    systemctl enable blockbook-vanar.service



# Start systemd
CMD ["/lib/systemd/systemd"]
