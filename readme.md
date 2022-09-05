# Bobliew-nvim-config
自己的nvim config,主要使用了lsp下的clangd进行代码补全,平时主要使用c++进行学习工作.

配置主要是通过lua进行的,但为了可能会使用的其他插件(通过vim plug等其他工具),还是添加了init.vim来以防万一,但目前来说还没有需要这样配置的工具.

上传主要目的是便于自己维护和在新设备快速配置nvim.

## env
neovim > 0.7
ubuntu 20.04


## 快速配置
下载neovim

    cd .config
如果存在nvim文件夹则不需要下一步

    mkdir nvim
    cd nvim
    git clone https://github.com/Bobliew/nvim_config_Bobliew.git
    cd lua
    nvim plugins.config

然后wq退出该文档就会通过命令自动安装插件

## ohters
说明较为简单,只是用于提醒自己如何配置,并没有对相关设定有太多说明,当然也欢迎交流.

## 参考
Neovim 配置实战：从0到1打造自己的IDE

<https://juejin.cn/book/7051157342770954277/section/7072942149863473185>

