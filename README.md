# Basic config for neovim 

## 安装方法：
For Windows:
```bash
md $env:LOCALAPPDATA/nvim
git clone https://github.com/LichKing-W/nvim-basic-config.git $env:LOCALAPPDATA/nvim
```
For Linux:
```bash
mkdir -p ~/.config/nvim
git clone https://github.com/LichKing-W/nvim-basic-config.git ~/.config/nvim
```
注意安装nodejs。
注意dashboard中plugin的路径需要改变。

## 插件:
- Packer: 管理插件。
- tree: 侧边栏。
- bufferline: 标签页。
- treesitter: 语法高亮。
- gruvbox-material: 主题。配置透明背景，不装自动补全太丑。
- mason+lsp: 自动补全。
- auto-pairs: 自动补全括号。
- comment: 注释插件，注释键配置为ctrl+/。
- telescope: 查找文件。
- project: 一个telescope的管理文件夹的插件。
- noice: UI弹窗。右上角message的弹窗需要在notify中配置。
- bufferdelete: 关闭buffer的插件。
- rainbow-delimeter: 彩虹括号。
- file_browser: telescope插件。在telescope中处理文件。
- surround: 给文本两端加入、修改、删除符号。
- dashboard: neovim起始页，更改配置后要PackerSync。
- leap: 在nvim中跳转光标的插件。
- rust-tools: 配置后才能使用rust-analyzer。

以及各种插件的依赖就不列出来了。

Packer的下载与安装参考项目[Github主页](https://github.com/wbthomason/packer.nvim#quickstart)。

For Unix and Linux:
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
For Windows:
```bash
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```
安装后打开neovim运行:PackerSync，需要设置Github代理。

