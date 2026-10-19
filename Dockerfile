
FROM alpine:latest
WORKDIR /app

RUN apk add --no-cache curl unzip && \
    curl -L -o Xray-linux-64.zip \
        https://github.com/XTLS/Xray-core/releases/download/v26.3.27/Xray-linux-64.zip && \
    unzip Xray-linux-64.zip && \
    mv Xray-linux-64/* . && \
    rm -rf Xray-linux-64 Xray-linux-64.zip && \
    chmod +x /app/xray

EXPOSE 443/tcp

CMD ["/app/xray", "run", "-c", "/app/config.json"]