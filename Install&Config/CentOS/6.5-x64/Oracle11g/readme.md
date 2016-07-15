

## centos 6.5 x64 install oracle 11g


### 1. 安装说明:

- 安装环境要求:
    - 主机(可以是云主机)硬件配置: 
        - CPU: 测试环境,要求不高. 生产环境, 尽量好点.
        - 内存: 
            - 1G, 云主机测试, 可以勉强跑起来, 非常不推荐.
            - 2G+, 测试机, 够用.
            - 8G, 目前一台阿里云的生产环境.
        - 硬盘:
            - 尽量用 SSD, 数据库是 IO 瓶颈型.
            - 40G+, 测试机, 够用. 
            - 500G, 生产环境云主机.
                - 目测业务开展起来远远不够
                - Oracle 的磁盘增长还是很快
                - 数据库日志增长也很快, 注意定期检查磁盘空间, 定期清理数据库日志
                - 磁盘不足时, 会导致服务挂掉.(遇到过一次)
        - 网络带宽:
            - 云主机, 只做数据库服务用, 可走内外 IP, 不需要公网带宽(1M 即可).
            - 尽量是走内网IP, 规划好多台云主机的功能.
    - OS 系统: centos 6.5 x64位
    - Oracle 版本: Oracle 11g 企业版
    - 支持云主机: 阿里云, 亚马逊 EC2 等
    
    
### 2. 概览:

- oracle 11g 企业版:
    - 官方只提供 图形界面安装指引, 想通过命令行安装, 需要修改很多配置, 很容易失败.
    - 官方的安装包, 图形界面安装 支持 centos, 待测试 Ubuntu.
    - 网上可搜索到 oracle 11g xe 版本(注意不是企业版!) 的 非图形化界面 静默安装配置脚本, 个人尝试失败!
    - 非专业 Oracle DBA 很难搞明白那些修改参数的作用, 还是用 GUI 安装吧.
    - docker 镜像:
        - 可在 docker hub 上, 找到 oracle 11g xe 版本的 image, 
        - 推荐学习者,不要尝试自己安装 Oracle 了.直接用 docker 镜像.
        - 但是生产环境, 用 XE 是不行的, 限制 数据库容量大小.
- 云主机安装:
    - 云主机操作: 
        - 安装 图形界面
        - 配置VNCserver 服务端服务.
    - 本地机器操作:
        - 通过 VNCserver 客户端, 连接云主机, 
        - 使用图形界面来安装 Oracle11g 企业版
        - 之后的安装,配置步骤, 跟普通的图形界面安装,没有区别
        - 虽然到这里,已经容易很多, 但是后面依然有很多坑.
        - Oracle 11g 比 MysQL 难用太多, 建议除非迫不得已, 不要用 Oracle, 一生黑.
        

### 3. 安装指引:


#### 3.1 安装 java8:

- [参考: How To Install Java on CentOS and Fedora](https://www.digitalocean.com/community/tutorials/how-to-install-java-on-centos-and-fedora)


#### 3.2 安装 VNCserver:

##### 参考文档:

- [阿里云上CentOS的图形访问](http://www.jianshu.com/p/ad68f78f1419)
- [CentOS6.5安装vncserver实现图形化访问](https://help.aliyun.com/knowledge_detail/5974462.html)
- [Ubuntu安装vncserver实现图形化访问](https://help.aliyun.com/knowledge_detail/5974461.html)


#### 3.2 添加中文字体支持:

- 执行对应的 shell 脚本.








### 4. 参考文档:



