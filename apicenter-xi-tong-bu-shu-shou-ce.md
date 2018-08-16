# api-center系统部署手册

## 安装一 基础环境

### 1\) web服务器

#### _配置JDK_

      _下载地址：_[_https://www.oracle.com/technetwork/java/javase/downloads/java-archive-javase8-2177648.html_](https://www.oracle.com/technetwork/java/javase/downloads/java-archive-javase8-2177648.html)\_\_

_安装后配置path和CLASS\_PATH 环境变量_

#### _配置TOMCAT_

      _下载地址：_[_https://tomcat.apache.org/download-80.cgi解压后，进入bin目录下编辑startup.bat_](https://tomcat.apache.org/download-80.cgi解压后，进入bin目录下编辑startup.bat) _文件,设置环境变量，如下：具体目录位置根据实际位置修改。_

```text
@echo off
set CATALINA_HOME=D:\test\apache-tomcat-8.5.28
set CATALINA_BASE=D:\test\apache-tomcat-8.5.28
SET JAVA_HOME=C:\Program Files\Java\jdk1.8.0_31
```

#### _系统其它设置_

_1 、打开注册表：regedit 。_ 

_2、 进入 HKEY\_LOCAL\_MACHINE\SYSTEM\CurrentControlSet Services\TCPIP\Parameters 。_

_3、新建 DWORD值，name：TcpTimedWaitDelay，value：30（十进制） –&gt; 设置为30秒，默认是240秒。_ 

_4、新建 DWORD值，name：MaxUserPort，value：65534（十进制） –&gt; 设置最大连接数65534 。_ 

_5、重启系统。_

### 2）数据库

_版本要求:Microsoft SQL Server2008 Standard Edition \(64-bit\)_

## 二 redis部署安装 {#er-xi-tong-bu-shu}

1 介质邮件获取。

2 Redis-x64-3.2.100.zip 文件解压。

3 cmd命令行切换到解压目录。

4 执行：redis-server redis.windows.conf

```text
E:\soft\dev\Redis-x64-3.2.100>redis-server redis.windows.conf
                _._
           _.-``__ ''-._
      _.-``    `.  `_.  ''-._           Redis 3.2.100 (00000000/0) 64 bit
  .-`` .-```.  ```\/    _.,_ ''-._
 (    '      ,       .-`  | `,    )     Running in standalone mode
 |`-._`-...-` __...-.``-._|'` _.-'|     Port: 6379
 |    `-._   `._    /     _.-'    |     PID: 63692
  `-._    `-._  `-./  _.-'    _.-'
 |`-._`-._    `-.__.-'    _.-'_.-'|
 |    `-._`-._        _.-'_.-'    |           http://redis.io
  `-._    `-._`-.__.-'_.-'    _.-'
 |`-._`-._    `-.__.-'    _.-'_.-'|
 |    `-._`-._        _.-'_.-'    |
  `-._    `-._`-.__.-'_.-'    _.-'
      `-._    `-.__.-'    _.-'
          `-._        _.-'
              `-.__.-'

[63692] 07 Aug 16:03:41.490 # Server started, Redis version 3.2.100
[63692] 07 Aug 16:03:41.491 * The server is now ready to accept connections on p
ort 6379
```

## 三 ~~系统~~部署

### 1）部署文件

_邮件获取_ 

### 2）初始化脚本

_1创建数据库，数据库名为：ApiCenter,配置访问用户，授予用户访问操作权限。_

_2 执行api-center.sql脚本。_

### 4）部署程序

#### _1 部署_

 _进入tomcat目录下_webapps_目录下，把api-center.war文件复制到_webapps_目录下,启动tomcat服务器，第一次启动tomcat回有报错信息。此时忽略该报错信息，启动结束后关闭服务。_

#### 2 修改数据库配置文件

_修改数据库配置：进入tomcat目录下 webapps/api-center/WEB-INF/classes/ ,打开jdbc.properties文件，主要修改1到4行。_

```text
#\u6570\u636E\u6E90\u9A71\u52A8
jdbc.ds.url=jdbc:sqlserver://192.168.2.216:1433;databaseName=ApiCente
jdbc.ds.username=ApiCenter
jdbc.ds.password=iIFoLNAW4TWvw1DrX7KInI+tBVpwGZcXCJ9qP+64cL1REKmvcWRHstho1Wopb1KR1LPqRDTipiVZTWWW6z6ZRw==
```

_a 修改数据库地址和数据库名称_

```text
jdbc.ds.url=jdbc:sqlserver://192.168.2.216:1433;databaseName=ApiCenter_test
```

_b 修改数据库连接用户名_

```text
jdbc.ds.username=ApiCenter
```

_c 数据库用户密码\(加密后\)_

```text
jdbc.ds.password=iIFoLNAW4TWvw1DrX7KInI+tBVpwGZcXCJ9qP+64cL1REKmvcWRHstho1Wopb1KR1LPqRDTipiVZTWWW6z6ZRw==
```

#### 3 修改应用主配置文件

_修改数据库配置：进入tomcat目录下 webapps/api-center/WEB-INF/classes/ ,打开application.yml文件._

_**a 修改系统服务端口,**系统默认端口为5513 ，无特殊情况，请不要修改此端口`。`_

```text
server:
  port: 5513
```

_**b FuyouRest对接配置**，customerId：设置为与Api-center再主站账号，此配置系统默认，不许修改；caCode：设置为与该商户号对也的caCode；baseServer：FuyouRest环境url；orderUrl和orderNotifyUrl固定值请不要修改。_

```text
fuyouRestServer:
  #商户ID
  customerId: '88888808'
  caCode: uR8xcmEt3dzPA2wBGKdn0/OQxuyiZtKcn8prTVy9sT333XJmyGsNQYwtL+CLXLtslg9nVof5Vw0=
  #ip及服务端口
  baseServer: http://192.168.2.100:18090/FuyouRest/
  #下单地址
  orderUrl: base/order
  #订单回调地址
  orderNotifyUrl: base/result
```

**c 同程火车票业务配置:** url、key、channel参数保持默认值，如果测试环境isProduction值为0保持不变，如果正式环境，请把isProduction设置为1【此功能如果不上先不配】

```text
#同程火车票
cltx:
  url: http://openapi.17usoft.net
  key: cb322002f9714c0290255421dae21ec5
  channel: C7CE5011905365E9
  isProduction: '0'
```

**d 话费流量配置** 话费流量使用欧飞供应商具体配置说明如下（备注地方是上线需要修改地方） 【此功能如果不上先不配】

```text
phone: 
  userid: A08566 //对接账号
  userpws: of111111 //对接密码
  KeyStr: OFCARD //签名秘钥
  baseUrl: http://apitest.ofpay.com/    //基础URL
  phoneOrderUrl: queryOrderInfo.do 
  phoneHomeUrl: mobinfo.do
  version: 6.0
  traffic: 
    url: flowOrder.do
    notifyUrl: phone/traffic/notify
  phone:
    url: onlineorder.do
    newTelQueryurl: newTelQuery.do
    cardid: 140101
  sinopec:
     url: sinopec/onlineorder.do
     queryCardInfoUrl: sinopec/queryCardInfo.do
```

**e 电影票配置**  （备注地方上线需要修改）

```text
#蜘蛛网电影票
film:
  urlStart: http://filmapi.spider.com.cn/v2/ceshi/        //同步，正式线请修改 
  appkey: ceshi                  //正式线修改
  appsecret: '0051657786'   //正式线修改
  filetype: json
  amapUrl: http://restapi.amap.com/v3/geocode/geo  
  amapKey: 92910ea0dedab1b2b59532e3e26239cf
```

#### 3 修改redis.properties配置文件 只需要修改redis主机ip地址 

```text
spring.redis.host=192.168.2.216 
```

```text
# database name
spring.redis.database=0
# Redis\u670D\u52A1\u5668IP
spring.redis.host=192.168.2.216    //修改主机IP
# Redis\u5BC6\u7801
spring.redis.password=
# Redis\u7AEF\u53E3\u53F7
spring.redis.port=6379
# \u8FDE\u63A5\u8D85\u65F6\u65F6\u95F4 \u5355\u4F4D ms\uFF08\u6BEB\u79D2\uFF09
spring.redis.timeout=3000
########################################################
###REDIS (RedisProperties) redis\u7EBF\u7A0B\u6C60\u8BBE\u7F6E
########################################################
# \u63A7\u5236\u4E00\u4E2Apool\u6700\u591A\u6709\u591A\u5C11\u4E2A\u72B6\u6001\u4E3Aidle(\u7A7A\u95F2\u7684)\u7684jedis\u5B9E\u4F8B\uFF0C\u9ED8\u8BA4\u503C\u4E5F\u662F8\u3002
spring.redis.pool.max-idle=20
# \u63A7\u5236\u4E00\u4E2Apool\u6700\u5C11\u6709\u591A\u5C11\u4E2A\u72B6\u6001\u4E3Aidle(\u7A7A\u95F2\u7684)\u7684jedis\u5B9E\u4F8B\uFF0C\u9ED8\u8BA4\u503C\u4E5F\u662F0\u3002
spring.redis.pool.min-idle=10
# \u5982\u679C\u8D4B\u503C\u4E3A-1\uFF0C\u5219\u8868\u793A\u4E0D\u9650\u5236\uFF1B\u5982\u679Cpool\u5DF2\u7ECF\u5206\u914D\u4E86maxActive\u4E2Ajedis\u5B9E\u4F8B\uFF0C\u5219\u6B64\u65F6pool\u7684\u72B6\u6001\u4E3Aexhausted(\u8017\u5C3D)\u3002
spring.redis.pool.max-active=60
# \u7B49\u5F85\u53EF\u7528\u8FDE\u63A5\u7684\u6700\u5927\u65F6\u95F4\uFF0C\u5355\u4F4D\u6BEB\u79D2\uFF0C\u9ED8\u8BA4\u503C\u4E3A-1\uFF0C\u8868\u793A\u6C38\u4E0D\u8D85\u65F6\u3002\u5982\u679C\u8D85\u8FC7\u7B49\u5F85\u65F6\u95F4\uFF0C\u5219\u76F4\u63A5\u629B\u51FAJedisConnectionException
spring.redis.pool.max-wait=3000
#\u9ED8\u8BA4\u751F\u547D\u5468\u671F30\u5929
spring.redis.defaultExpiration=2592000
#\u670D\u52A1\u5668\u4E0A\u4E0B\u6587\u8DEF\u5F84
spring.redis.contextPath=api-center
```

#### 4  完成配置后重启服务器

#### 5 同步电影票数据

_电影票基础数据系统根据不同类型都设置定时获取，为保证刚上线电影票基础数据，上线部署启动成功后需要手动访问如下地址，从蜘蛛网获取基础数据。_ 

_http://服务器Ip:服务器端口/api-center/film/schedSyncFilm_

####  

### 5）第三方业务回调

#### 1 全平台打车回调融行回调地址配置

线下联系融行供应商修改全平台打车测试环境回调地址。

API回调地址为：[http://ip:port/api-center/allTaxi/callBack](http://xunlian.55555.io:5514/api-center/allTaxi/callBack)

