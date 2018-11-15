FROM vantienvnn/laravel5-docker-build:latest

# Apply Nginx configuration
RUN apt-get update \
    && apt-get install -y redis-server \
    && touch /init-start.sh && rm -f /init-start.sh \
    && chsh -s /bin/bash jenkins

ADD config/init-start.sh /init-start.sh
RUN chmod +x /init-start.sh
# Default command
ENTRYPOINT ["/init-start.sh"]
