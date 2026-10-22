# fast

### 快速搭建你的vless+reality协议节点

问：为什么要选择vless+reality协议？

答：因为目前vless+reality协议是最强的抗封锁协议

### 安装环境

> [!NOTE]
>
> 支持Debian/ubuntu
>
> 其它系统自行测试

#### 安装Dcoker

```bash
curl -fsSL https://get.docker.com | sh
```

### 开始部署

> [!NOTE]
>
> 以下部署方式都是原生，没有使用任何脚本

### 安装Git并克隆仓库

```bash
apt install git
git clone https://github.com/suorua/fast.git
```

### 启动容器

```bash
cd fast #进入fast目录
docker compose up -d #启动容器
```

### 管理容器

```bash
docker ps #查看正在运行的容器
docker compose down # 宕
docker logs xray -f --tail 100 #查看最近日志100行并实时刷新
```

### 客户端信息

复制lvless链接导入v2rayN，Hiddify，shadowrocket等客户端后，编辑节点，把节点地址 0.0.0.0 替换成你自己的VPS IP

```bash
vless://41104127-4a14-4dbe-87e8-dd4fcf0b66ca@0.0.0.0.0:1443?encryption=none&flow=xtls-rprx-vision&security=reality&sni=www.icloud.com&fp=chrome&pbk=uPfvlE9XLGL5o1R4RUXSwUv9sgoCgZHuuVHfLEeWryE&sid=9f3a7c1d5e8b2046&spx=9f3a7c1d5e8b2046&type=tcp&headerType=none#自建节点

```

> [!IMPORTANT]
>
> 添加客户端 只需要把0.0.0.0服务器地址替换成你的VPS IP地址就完成了搭建部署



#### Clash Verge 配置

> [!IMPORTANT]
>
> 必须把文件内容的 server: IP 换自己的VPS地址
>
> 位置在第四行 server: IP 

```yaml
proxies:
  - name: 自建节点（选我）
    type: vless
    server: IP
    port: 1443
    uuid: 41104127-4a14-4dbe-87e8-dd4fcf0b66ca
    network: tcp
    tls: true
    servername: www.icloud.com
    client-fingerprint: chrome
    flow: xtls-rprx-vision
    reality-opts:
      public-key: uPfvlE9XLGL5o1R4RUXSwUv9sgoCgZHuuVHfLEeWryE
      short-id: "9f3a7c1d5e8b2046"
    udp: true

proxy-groups:
  - name: PROXY
    type: select
    proxies:
      - 自建节点（选我）
      - DIRECT

rules:
  - MATCH,PROXY
```

##### 你也可以直接下载订阅配置

Clash Verge 订阅配置下载：



##### 导入配置到Clash Verge客户端

打开Clash Verge 订阅选项页，然后把Clash Verge 订阅配置下载到桌面保存，直接拖到订阅选项卡 空白即可。然后右键订阅配置选择编辑节点，把 server: IP 换成自己的VPS IP，打开系统代理。你就成功了



> [!NOTE]
>
> 以上节点 "serverNames" 选用了 www.icloud.com 如果不喜欢，请自行更换 （博主本人一直在用）

#### 客户端下载：

**windows：V2rayn** 

下载地址：https://github.com/2dust/v2rayn

windows：[Clash Verge](https://github.com/zzzgydi/clash-verge)

下载地址：https://github.com/clash-verge-rev/clash-verge-rev/releases

**Android：v2rayng**

下载地址： https://github.com/2dust/v2rayng



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

Clash Verge：https://github.com/clash-verge-rev/clash-verge-rev/releases
