# config
Repository for my dotfiles

## Use
Pull repo down into a new `~/config` dir (note this is not `~/.config`

Remove your existing configuration files, and set up symlinks (here we assume `~/.zshrc` and `~/.config/nvim`
`rm -rf ~/.zshrc`
`rm -rf ~/.config/nvim`

`ln -s ~/config/zshrc ~/.zshrc`
`ln -s ~/config/nvim/* ~/.config/nvim`

Now, we can edit the git repo, and changes will be automatically read locally through symlinking
