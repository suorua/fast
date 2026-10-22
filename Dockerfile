
FROM alpine:latest
WORKDIR /app

# 安装上海时区数据
RUN apk add --no-cache curl unzip ca-certificates tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    curl -fSL -o Xray-linux-64.zip \
    https://github.com/XTLS/Xray-core/releases/download/v26.3.27/Xray-linux-64.zip && \
    unzip Xray-linux-64.zip && \
    rm -f Xray-linux-64.zip && \
    chmod +x /app/xray

ENV TZ=Asia/Shanghai

COPY ./server.json /app/server.json

EXPOSE 443/tcp

CMD ["/app/xray", "run", "-c", "/app/server.json"]
