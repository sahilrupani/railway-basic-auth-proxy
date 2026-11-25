# A small nginx reverse proxy that puts a username and password in front of
# any website or Railway service.
FROM nginx:1.29-alpine

RUN apk add --no-cache openssl
COPY proxy.conf.template /etc/nginx/templates/default.conf.template
COPY --chmod=755 10-railway-proxy.envsh /docker-entrypoint.d/10-railway-proxy.envsh

# Only render variables this proxy defines, so nginx's own $variables survive.
ENV NGINX_ENVSUBST_FILTER="^(PROXY_|ORIGIN$)"
