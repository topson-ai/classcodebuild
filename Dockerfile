#FROM nginx:1.13.3-alpine
#COPY /nginx/default.conf /etc/nginx/conf.d/
#RUN rm -rf /usr/share/nginx/html/*
#COPY dist/shop /usr/share/nginx/html

# 使用官方的 httpd 镜像作为基础镜像
FROM httpd:latest

# 删除默认的 Apache 页面
RUN rm -rf /usr/local/apache2/htdocs/*

# 复制前端项目的构建产物到 Apache Web Server 的根目录
COPY dist/shop/ /usr/local/apache2/htdocs/

# 暴露 80 端口（HTTP）
EXPOSE 80