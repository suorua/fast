# fast

### 快速搭建你的vless+reality协议节点

问：为什么要选择vless+reality协议？

答：因为目前vless+reality协议是最强的抗封锁协议

### 开始安装

> [!NOTE]
>
> 支持Debian/ubuntu
>
> 其它系统自行测试

### 安装Dcoker

```bash
curl -fsSL https://get.docker.com | sh
```

### 安装Git并克隆仓库

```bash
apt install git
git clone https://github.com/suorua/fast.git
```

### 启动容器

```bash
cd fast #进入fast目录
docker compose up #启动容器
```



### 客户端信息

```bash
vless://41104127-4a14-4dbe-87e8-dd4fcf0b66ca@0.0.0.0:443?encryption=none&flow=xtls-rprx-vision&security=reality&sni=www.icloud.com&fp=chrome&pbk=uPfvlE9XLGL5o1R4RUXSwUv9sgoCgZHuuVHfLEeWryE&sid=6ba85179e30d4fc2&spx=9f3a7c1d5e8b2046&type=tcp&headerType=none#0.0.0.0

```

> [!IMPORTANT]
>
> 添加客户端 只需要把0.0.0.0服务器地址替换成你的VPS IP地址就完成了搭建部署

#### 支持的客户端

**windows：V2rayn** 

下载地址：https://github.com/2dust/v2rayn

**Android：v2rayng**

下载地址： https://github.com/2dust/v2rayng

### 管理容器

```bash
docker ps #查看正在运行的容器
docker compose down # 宕
docker logs xray -f --tail 100 #查看最近日志100行并实时刷新
```

> [!NOTE]
>
> 博主推荐的VPS,速度超级快

### VPS推荐

美国洛杉矶 CN2 GIA + 9929 + CMIN2 三网优化线路

官网链接：https://matrixidc.net/r/UYYJL4T

问：什么是CN2 GIA + 9929 + CMIN2 三网优化线路

答：自己问GPT等AI。只知道速度很快就可以了



### 以上涉及的内容全部来自以下链接：

XTLS ：https://github.com/XTLS/Xray-core

Docker：https://www.docker.com

Matrixidc：https://matrixidc.net/r/UYYJL4T

V2rayng：https://github.com/2dust/v2rayng

V2rayn：https://github.com/2dust/v2rayn
