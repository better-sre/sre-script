

# 问题:
#     - Mac  文件的右键, 打开方式里有重复无效的打开方式.
#     - 关键点: 重启所有的 Finder.

/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"



