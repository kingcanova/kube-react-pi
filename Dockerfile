FROM arm32v7/nginx
LABEL author="Tristan Canova"
COPY ./build /var/www
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]
