#编译阶段
FROM nginx
COPY dist /usr/share/nginx/html
EXPOSE 8082