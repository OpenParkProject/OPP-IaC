FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/opp.conf /etc/nginx/conf.d/default.conf
RUN apk add --no-cache git && \
    git clone https://github.com/OpenParkProject/OPP-frontend.git /tmp/opp-frontend && \
    cd /tmp/opp-frontend && \
    rm -rf /usr/share/nginx/html/* && \
    cp -r index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
