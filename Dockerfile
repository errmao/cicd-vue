# 基于node镜像
FROM node
# 基于nginx镜像
FROM nginx
COPY ./dist /usr/share/nginx/html
EXPOSE 80
