# brook
基于brook的docker镜像,brook是干嘛的?这里不做介绍,懂的人自然懂.



### 使用brook server

```bash
docker run -d -p 9999:9999 \ 
	--name=brook-server
	-e PASSWORD=xxx \
	--restart=always \
	helloz/brook:server
```

* `9999`为brook server端口,可根据情况自行修改
* `xxx`为brook server密码,请自行修改



### brook client

```bash
docker run -d -p 1080:1080 \ 
	-p 8010:8010 \
	--name=brook-client
	-e SERVER=192.168.1.111:9999
	-e PASSWORD=xxx \
	--restart=always \
	helloz/brook:client
```

* `1080`:socket5代理端口
* `8010`:HTTP代理端口
* `192.168.1.111:9999`:brook server服务器IP+端口
* `xxx`:brook server密码



### 最后

* brook项目地址:https://github.com/txthinking/brook
* brook文档地址:https://txthinking.github.io/brook/