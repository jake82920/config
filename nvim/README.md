# NEOVIM SETUP GUIDE

Beyond this directory, NVIM requires:
- LSP Servers
    - clangd
    - lf
    - lua-language-server
    - texlab
- LaTeX toolchain
    - latexmk
    - vim-latex
    - texlive
    - and any other desired packages
- ripgrep and fd-find

## TROUBLESHOOTING

### NVIM needs to be version >= 0.12

If not included in default repositories:
- download neovim tarball from github
- extract to /opt/nvim
- use `ln -s` to create a symlink from the nvim binary onto path

### Checking package status

:checkhealth <plugin_name>

