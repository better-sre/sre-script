
## homebrew 安装 jenkins 说明:


- 需要先要安装JAVA,推荐JAVA1.8
- 工具是java系的

### 安装方法:


``` bash

➜  ~  brew install jenkins

==> Downloading http://mirrors.jenkins-ci.org/war/1.643/jenkins.war
==> Downloading from http://ftp.tsukuba.wide.ad.jp/software/jenkins/war/1.643/jenkins.war
==> jar xvf jenkins.war
==> Caveats
Note: When using launchctl the port will be 8080.

To have launchd start jenkins at login:
  ln -sfv /usr/local/opt/jenkins/*.plist ~/Library/LaunchAgents

Then to load jenkins now:
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.jenkins.plist

Or, if you don't want/need launchctl, you can just run:
  jenkins

==> Summary
  /usr/local/Cellar/jenkins/1.643: 6 files, 62M, built in 29 seconds
➜  ~


```


### 设置后台启动 jenkins 服务:


```

# 重启服务,2步操作:
launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.jenkins.plist
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.jenkins.plist


# 修改 上述路径下的 jenkins.plist 文件中的端口,改为:8040, 防止和 nginx 冲突

访问端口:

http://127.0.0.1:8040/



```

### 安装插件:

在左侧的导航找到 Manage Jenkins，进到管理界面，然后找到 Manage Plugins 进入插件管理界面，我们安装几个必须的插件：

- [GitHub plugin](https://wiki.jenkins-ci.org/display/JENKINS/Github+Plugin)
- [GitHub Pull Request Builder](https://wiki.jenkins-ci.org/display/JENKINS/GitHub+pull+request+builder+plugin)



### 参考文档:

- [在 Mac mini 上架设 Jenkins 服务器来运行 iOS 测试](http://linjunpop.logdown.com/posts/162202-set-up-jenkins-server-on-the-mac-mini-to-run-ios-tests)



