FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/opp.conf /etc/nginx/conf.d/default.conf
RUN apk add --no-cache curl
RUN rm -rf /usr/share/nginx/html/*
RUN curl -s https://api.github.com/repos/OpenParkProject/OPP-frontend/releases/latest \
| grep "browser_download_url" \
| grep "opp-web-.*\.tar\.gz" \
| cut -d '"' -f 4 \
| xargs curl -L -o /tmp/opp-web.tar.gz
RUN tar -xvf /tmp/opp-web.tar.gz -C /usr/share/nginx/html/
RUN rm /tmp/opp-web.tar.gz

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
