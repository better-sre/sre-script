# awesome-script

## 迁移: 

- https://github.com/better-sre/config
    - 请参考此项目脚本, 后续更新在此.
    - 基于 go-task, 包含各种安装脚本


## 项目说明:

### 初衷:

- 工作需要经常在各种系统(Ubuntu, CentOS, Mac OSX等)间切换.
- 各系统间, 在安装常用开发包时,有各种细微差异.(如nginx,python,git,Oracle,MySQL,mongodb 等)
- 每次配置新的开发环境,生产环境,都需要搜索安装,很繁琐.
- 现在有 docker 可以减轻负担,但是 build docker 镜像依然需要知道安装方法.
- 很多软件的安装方法,会过时, 版本更新变化很快.

### 项目内容:

- 包含常用软件的shell 安装脚本,以及依赖配置.(包括 Centos, Ubuntu, Mac OSX 等)
- 会有功能说明文档.
- 会注明日期,(安装方法有时效性)

### 项目结构:

- CentOS
  - 6.5-X64
    - nginx
    - python
    - mysql
    - redis
    - mongodb
- Ubuntu
  - 14.04-X64
    - nginx
    - python
    - mysql
    - redis
    - mongodb
- MacOSX
  - brew-install.sh
  - brew-cask-install.sh
  
