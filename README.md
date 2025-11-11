# config
## Use
Pull repo down into a new `~/config` dir (note this is not `~/.config`

Remove your existing configuration files, and set up symlinks (here we assume `~/.zshrc` and `~/.config/nvim`
`rm -rf ~/.zshrc`
`rm -rf ~/.config/nvim`
`rm -rf ~/.tmux.conf`

`ln -s ~/config/zshrc ~/.zshrc`
`ln -s ~/config/nvim/* ~/.config/nvim`
`ln -s ~/config/tmux.conf ~/.tmux.conf`

Now, we can edit the git repo, and changes will be automatically read locally through symlinking

# MacOS Settings
System settings to change on MacOS
1. Remap caps lock key to escape - `System Settings > Keyboard > Keyboard Shortcuts > Modifier Keys`
2. Map `⌘1`, `⌘2`, ... , `⌘n` to change Desktops - `System Settings > Keyboard > Keyboard Shortcuts > Mission Control`
3. Download `GruvboxDark.itermcolors`, and import into Iterm2 - `Settings > Profiles > Colors > Color Preset > Import/Select`
