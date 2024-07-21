FROM caddy:2.8.4-builder AS builder
RUN xcaddy build --with github.com/caddy-dns/namecheap

FROM caddy:latest
COPY --from=builder /usr/bin/caddy /usr/bin/caddy