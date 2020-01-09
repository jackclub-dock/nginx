FROM nginx
MAINTAINER jack "958691165@qq.com"

#时区设置
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

RUN mkdir -p /var/www

COPY nginx.conf /etc/nginx/nginx.conf

RUN usermod -u 1000 nginx
RUN groupmod -g 1000 nginx
RUN groupmod -g 999 nginx