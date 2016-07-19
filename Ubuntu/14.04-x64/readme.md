

## ubuntu 14.04 说明:


### 1. 国内镜像源:

#### 1.1 查看系统信息.更改源,要特别注意版本

```
lsb_release -a

# 输出提示信息:
# No LSB modules are available.
# Distributor ID: Ubuntu
# Description:    Ubuntu 14.04.3 LTS
# Release:        14.04
# Codename:       trusty


```
#### 1.2 源列表:

- [源列表](http://wiki.ubuntu.org.cn/%E6%BA%90%E5%88%97%E8%A1%A8)
- 源对比:
    - 阿里云的源
    - 搜狐
    - 香港源: 大多数情况, 香港的源, 更好, 推荐
    
#### 1.3 替换源:
    
```
# ubuntu 14
sudo cp sources.list /etc/apt/

```



