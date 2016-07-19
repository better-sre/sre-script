

## 阿里云 Centos 安装 Oracle 必读

- 这里搜集了一些文档,无意中在阿里云的 官方社区 BBS里找到, 如获至宝.
- 该系列主题, 都值得一读, 涉及: 
    - Oracle DBA 需要掌握的大量知识.
    - 阿里云主机,各项性能测试
    - Oracle 安装遇到的各种问题解决办法
    - Oracle 如何高效配置

   
## 精选参考文档:


### 参考0: 官方参考

- [Oracle 官方安装教程, 非常详细,值得参考](https://docs.oracle.com/cd/B28359_01/install.111/b32002/pre_install.htm)
- [alyun 官方 BBS 关于 Oracle 主题搜索](https://www.aliyun.com/ss/?k=Oracle)
    - 阿里云官方的 BBS 论坛, 里面的讨论, 有不少技术干货.
    - 遇到使用问题, 值得上去搜索看看.

### 参考1: terryma0076

- [Oracle11g On ECS 实践一：Oracle11gR2 ECS SSD环境安装指南](https://bbs.aliyun.com/read/269639.html?spm=0.0.0.0.mnsOUb)
    - 附件文档下载: 详细的 Oracle 安装教程, 必读
- [Oracle11g On ECS 实践二：Oralce On ECS OLTP 性能测试报告](https://bbs.aliyun.com/read/269641.html?spm=0.0.0.0.mnsOUb)
    - 附件文档下载: 详细的压力测试
    - swingbench 压测机 vs Oracle 数据库
    - SwingBench是一款免费的，跨平台的多线程性能测试工具。针对oracle基准测试非常出色
    - 测试结果:
        - 1）在ECS服务器用SSD云盘组成的oracle ASM上安装oracle ，IOPS，内存，IO不是瓶颈，CPU是瓶颈
        - 2）OLTP测试场景下，CPU压力在75%以内，响应时间没有明显变长
        - 阿里云ECS 16核64G 
            - 高规格类型主机, 最多支持swingbench OLTP场景下200并发用户，
            - 低规格, 支持swingbench OLTP场景下50并发用户，
            - 中规格, swingbench OLTP场景下100并发用户，
- [Oracle 11g On ECS 实践三：Oracle11gR2 ECS SSD DataGuard安装指导](https://bbs.aliyun.com/read/269642.html)
    - 附件文档下载: 配置Oracle 高可用的参考文档,必读
- [Oracle11g On ECS 实践四：Oracle11g在阿里云ECS上高可用架构](https://bbs.aliyun.com/read/269643.html?spm=0.0.0.0.dwtSij)
    - 附件文档下载: 高可用架构方案, 必读
    - 方案一:
        - 应用及DB分别部署到VPC内，
        - 数据库通过RMAN将数据备份到本地SSD云盘，
        - 然后生成存储级快照进行备份，或者直接备份到位于同可用区的OSS存储上。
        - 恢复可以借助本地及OSS的备份介质进行恢复。
        - 适用场景：这种方案对于小型企业的生产环境，中大型企业的测试环境，开发环境是比较适用的。
        - 适合IOPS在50-1500的，数据量在500G以内的数据库
    - 方案二:
        - 应用及DB分别部署到VPC内
        - 采取oracle DataGurad进行同VPC内数据库主备同步
        - 同步的可以选择实时同步，也可以通过选择每天定期Apply归档日志
        - 从数据库通过RMAN将数据备份到本地及同可用区的OSS存储，同时将本地数据备份同步到备可用区内的OSS存储。
        - 容灾切换是首选实时DG切换，也可以根据定期同步的DG恢复数据库
        - 适用场景：本方案是针对中大型企业
        - 适合IOPS在2000-15000的，数据量在500G-5T以内的数据库。
        - 如果采用Oracle DG技术，必须要使用Oracle Enterprise版本的数据库
    - 方案三: 
        - 在方案二的基础上本方案增加基于DG的异地同步，本地发生故障时可以采用方案二的解决办法。
        - 适用场景：本方案是针对大型企业
        - 架构比较适合IOPS在8000-20000的，数据量在1T-10T以内的数据库。
    

### 参考2: 
 
- [阿里云的Oracle的高可用](https://bbs.aliyun.com/read/274200.html)
- [解答阿里云oracle用户的顾虑](https://bbs.aliyun.com/read/235209.html?spm=5176.bbsr180907.0.0.nExAGG)
    - 内有阿里云主机性能测试数据
- [sql调优工具-mytun之十年磨一剑](https://bbs.aliyun.com/read/181774.html?spm=5176.bbsr235209.0.0.PDH5Wk)
    - 作者开发的一个 DBA 工具
- [阿里云linux5.7安装ORACLE必读](https://bbs.aliyun.com/read/180238.html?spm=5176.bbsr235209.0.0.PDH5Wk)
    - 阿里云主机注意事项
    - 阿里云主机性能测试数据
    - oracle 安装, 多磁盘策略规划
    - 此贴中跟帖回复很多内容,不要略过.
    - 该作者 业务联系QQ：123614791  
- [阿里云的oracle故障解决案例](https://bbs.aliyun.com/read/181057.html?spm=5176.bbsr235209.0.0.PDH5Wk)
- [阿里云linux安装ORACLE常见问题](https://bbs.aliyun.com/read/180907.html?spm=5176.bbsr180907.0.0.nExAGG)
    - Q: oracle三天两头就报：OUT of memory" 
    - Q: 重启后查swap还是0” 
    - Q: swap 该用多大?
        - Ans: 
            - 内存: 1G~2G , swap 设置: 1.5倍内存大小.
            - 内存: 2G~16G, swap 设置: 等于实际内存大小
            - 内存: > 16G, swap 设置: 16G
    - Q: 减少 swap 使用?
        - Ans: 
            - 为了让ORACLE所在的主机os少用swap,  防止io出现问题，
            - 在配置sga大小是一定参考oracle官方文档， sga占物理内存的比例不能过大。 
            - 如果内存够用，除非有特殊情况(比如安装oracle, oracle 必须要 swap)，建议不使用swap
- [阿里云 ORACLE 优化](https://bbs.aliyun.com/read/181443.html?spm=5176.bbsr180907.0.0.nExAGG)
    - 1.增大IO带宽方面：多数据盘方案
        - 使用ORACLE时,多磁盘方案是首选方案。 
        - 比如如果要买300G, 可以买3个100G。
    - 2. 并发时多数据盘同时工作：数据和索引放在不同的数据盘，日志单独放一数据盘
        - 数据盘xvdb   /u02  数据文件 （data tablespace)      随机读写   30M * 20%=6M  
        - 数据盘xvdc   /u03  索引文件 （index tablespace）   随机读写   30M * 20%=6M  
        - 数据盘xvdd   /u04 日志文件（REDO LOG）             顺序写（可充分利用30M/秒的磁盘IO带宽）。  
    - 3.减少ORACLE日志的生成量
        - 每秒生成的 Redo size尽量少
        - 数据库按功能进行拆分或简化逻辑操作，优化业务流程
        - 减少不必要的改， 改前先做判断，如果已是目标状态即不必更新了。 
    - 4.优化来减少物理的读写, 以后再分解吧。

- [ORACLE 数据库健康检查脚本下载--干货](https://bbs.aliyun.com/read/182376.html?spm=5176.bbsr180238.0.0.hcfnai)
- [阿里云数据库迁移方案-不间断业务](https://bbs.aliyun.com/read/181568.html?spm=5176.bbsr180238.0.0.hcfnai)
    - 1.把生产库的备库（data guard）先迁移到阿里云
    - 2.在业务非高峰期时间（如晚上），把主备库的角色互换。
    - 3.把曾经的生产库（目前已变成了备库）迁移到阿里云。
    - 4.(可选)如果主备库设备有性能差异，可以再做一次主备库的角色互换。 













