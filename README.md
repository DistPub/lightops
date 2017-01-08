### lightops

轻量级的devops框架

### install

将`export PATH=/path/to/lighops/bin:$PATH`添加到你的`rc file`，再`source /path/to/your/rc_file`使PATH生效

example:

    1. 如果你的shell为`/bin/bash`，则`rc file`为`$HOME/.bash_profile`
    1. 如果你的shell为`/bin/zsh`，则`rc file`为`$HOME/.oh-my-zsh/oh-my-zsh.sh`

### core commands

1. scp_to_server

    >拷贝文件到服务器

1. scp_and_execute

    >拷贝文件到服务器并执行文件

1. ssh_and_execute

    >在服务器上执行命令

### demo

请参考`bootstrap_server`文件夹下的脚本
