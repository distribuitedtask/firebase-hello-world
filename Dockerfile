FROM nginx:1.27-alpine AS runtime

LABEL org.opencontainers.image.source="https://github.com/REEMPLAZAR_ORG/firebase-hello-world" \
      org.opencontainers.image.description="Sitio Hello World para despliegue en Firebase Hosting" \
      org.opencontainers.image.licenses="MIT"

COPY public /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]


