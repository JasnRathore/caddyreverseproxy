FROM caddy:2-alpine

COPY Caddyfile /etc/caddy/Caddyfile

# Copy fallback website files
COPY index.html /var/www/html/index.html

EXPOSE 80
EXPOSE 443

CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
