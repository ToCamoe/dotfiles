### Requirements
* NeoVim < 0.10.0
For NeoVim Plugins:
```
golangci-lint
yamllint
ripgrep
fd (optional)
```

### Gnome Terminal
Load setting:
```
dconf load /org/gnome/terminal/ < gnome-terminal-profiles.dconf
```
Save setting:
```
dconf dump /org/gnome/terminal/ > gnome-terminal-profiles.dconf
```
