FROM   debian:8

# Add TeamSpeak user
RUN    useradd -s /usr/sbin/nologin teamspeak

# Make volume directories so permissions can be set
RUN    mkdir -p /data/logs
RUN    chown -R teamspeak:teamspeak /data

VOLUME ["/data"]
USER teamspeak
CMD ["/bin/bash"]
