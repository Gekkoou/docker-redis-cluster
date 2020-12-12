### docker-redis-cluster

快速创建redis集群

使用
----
1. 安装 `docker` 和 `docker-compose`
2. git clone 代码到本地
    ```
    $ git clone git@github.com:Gekkoou/docker-redis-cluster.git
    ```
3. 执行命令
    ```
    $ cd docker-redis-cluster
    $ docker-compose up -d
    ```
4. 执行命令
    ```
    $ docker exec -it redis-cli /bin/sh ./redis-cluster.sh
    根据提示输入 'yes' 即可创建redis集群
    ```

目录结构
----

```
├── config               配置文件目录
├── data                 数据目录
├── log                  日志目录
├── .env                 环境配置文件
├── docker-compose.yml   docker-compose配置文件
└── redis-cluster.sh     创建集群命令
```

注意
----
若想加入已有的 docker network , 编辑文件 docker-compose.yml


```
networks:
  redis-cluter:
    driver: bridge
    ipam:
       config:
        - subnet: ${SUBNET}
```
改为
```
networks:
  redis-cluter:
    external:
      name: *network_name*
```
这样就可以实现容器间互联通信