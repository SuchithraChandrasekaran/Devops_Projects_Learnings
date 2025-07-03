# Custom Nginx base image with security enhancements
FROM nginx:alpine

# Install additional packages for security and monitoring
RUN apk add --no-cache \
    curl \
    openssl \
    && rm -rf /var/cache/apk/*

# Remove default nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Create nginx user and set permissions
RUN addgroup -g 101 -S nginx && \
    adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx nginx

# Create directories for nginx
RUN mkdir -p /var/cache/nginx/client_temp \
    /var/cache/nginx/proxy_temp \
    /var/cache/nginx/fastcgi_temp \
    /var/cache/nginx/uwsgi_temp \
    /var/cache/nginx/scgi_temp \
    /var/log/nginx \
    /var/run

# Set proper permissions
RUN chown -R nginx:nginx /var/cache/nginx \
    /var/log/nginx \
    /var/run \
    /etc/nginx

# Create SSL directory
RUN mkdir -p /etc/ssl/certs && \
    chown -R nginx:nginx /etc/ssl/certs

# Switch to nginx user
USER nginx

# Expose ports
EXPOSE 80 443
