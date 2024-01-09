# Basic config for neovim on windows
将目录内的文件clone到$env:LOCALAPPDATA/nvim中
目前包含插件:
- Packer: 管理插件。
- tree: 侧边栏。
- bufferline: 标签页。
- treesitter: 语法高亮。
- tokyonight: 主题。配置透明背景，不装自动补全太丑。
- coc: 自动补全。个人觉得用起来比mason+lsp好用。
- auto-pairs: 自动补全括号。
- comment: 注释插件，注释键配置为ctrl+/。
- telescope: 查找文件。
- dashboard: neovim起始页，更改配置后要PackerSync。

Packer的下载与安装参考：`https://zhuanlan.zhihu.com/p/606116492`。
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 $env:LOCALAPPDATA/nvim/site/pack/packer/start/packer.nvim
```
安装后打开neovim运行:PackerSync，需要代理github。

