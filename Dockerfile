# 基于node镜像
FROM node

# 打包到/home/vue-cicd/dist目录下
RUN npm install \
    && npm run build

# 基于nginx镜像
FROM nginx

# 一般nginx的默认配置我们无法直接使用，所以需要用到自己的nginx配置
# COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
