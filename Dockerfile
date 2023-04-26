FROM nginx:alpine

ENV API_URL=http://localhost:4000
ENV DEFAULT_POOL=exchangeCoin

WORKDIR /usr/share/nginx/html/

COPY . .

RUN mv docker-entrypoint.sh /docker-entrypoint.sh && chmod +x /docker-entrypoint.sh

CMD "/docker-entrypoint.sh"
