FROM linuxserver/letsencrypt

COPY default /config/nginx/site-confs/
COPY nginx.conf /config/nginx/
RUN mkdir -p /run/nginx

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
