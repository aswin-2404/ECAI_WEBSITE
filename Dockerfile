FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY target/static-site/ /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
