# NEOVIM SETUP GUIDE

Beyond this directory, NVIM requires:
- Rust Toolchain
- tree-sitter-cli (through cargo)
- LSP Servers
    - clangd
    - java
    - lf
- LaTeX Toolchain
- ripgrep and fd-find

## TROUBLESHOOTING

### NVIM needs to be version >= 0.12

Just ask chat for the repo

### Checking package status

:checkhealth <plugin_name>

### blink_cmp_fuzzy not downloaded/built

Force a single rebuild with:
```
:lua require("blink.cmp").build({ force = true }):pwait()
```
