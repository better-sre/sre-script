
## homebrew 常用命令:

- 帮助

```bash
-> % brew
 
Example usage:
  brew search [TEXT|/REGEX/]
  brew (info|home|options) [FORMULA...]
  brew install FORMULA...
  brew update
  brew upgrade [FORMULA...]
  brew uninstall FORMULA...
  brew list [FORMULA...]

Troubleshooting:
  brew config
  brew doctor
  brew install -vd FORMULA

Brewing:
  brew create [URL [--no-fetch]]
  brew edit [FORMULA...]
  https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md

Further help:
  man brew
  brew help [COMMAND]
  brew home




# 强制卸载所有版本,否则只卸载最新的版本, 可能残留 旧的版本
brew uninstall --force curl


# Makes you owner of /usr/local 

$ sudo chown -R `whoami` /usr/local

# Force uninstalls failed python
$ brew uninstall -f python

# Clear the brew cache
$ rm -rf `brew --cache`

# Recreate the brew cache
$ mkdir `brew --cache`

# Cleanup - cleans up old homebrew files
$ brew cleanup

# Prune - removes dead symlinks in homebrew
$ brew prune

# Doctor - runs homebrew checks for common error causing issues
$ brew doctor


```



## brew cask 命令:

- 命令:


```bash

# 查看APP信息:
brew cask info squirrel    


# 强制卸载:
brew cask uninstall --force  XXXX


```



