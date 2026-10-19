
FROM alpine:latest
WORKDIR /app

RUN apk add --no-cache curl unzip ca-certificates && \
    curl -fSL -o Xray-linux-64.zip \
    https://github.com/XTLS/Xray-core/releases/download/v26.3.27/Xray-linux-64.zip && \
    unzip Xray-linux-64.zip && \
    rm -f Xray-linux-64.zip && \
    chmod +x /app/xray
COPY ./server.json /app/server.json

EXPOSE 443/tcp

CMD ["/app/xray", "run", "-c", "/app/server.json"]