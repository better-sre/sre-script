

## Nginx 说明:

### 1. 配置说明:

```

/usr/local/etc/nginx/servers

# 配置:
cd /usr/local/etc/nginx


# 停止：
sudo nginx -s quit

```

### 2. homebrew 安装日志:

```

==> Pouring nginx-1.8.0.el_capitan.bottle.1.tar.gz
==> Caveats
Docroot is: /usr/local/var/www

The default port has been set in /usr/local/etc/nginx/nginx.conf to 8080 so that
nginx can run without sudo.

nginx will load all files in /usr/local/etc/nginx/servers/.

To have launchd start nginx at login:
  ln -sfv /usr/local/opt/nginx/*.plist ~/Library/LaunchAgents
Then to load nginx now:
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist
Or, if you don't want/need launchctl, you can just run:
  nginx
==> Summary

```

