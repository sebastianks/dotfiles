Probably the cleanest dotfiles you've ever seen.

## Requirements

- [neovim](https://github.com/neovim/neovim) (>=v0.5)
- [fzf](https://github.com/junegunn/fzf)
- [fasd](https://github.com/clvv/fasd)
- [ranger](https://github.com/ranger/ranger)
- [lazygit](https://github.com/jesseduffield/lazygit)

> All of these might have some dependency requirements which you would have to solve yourself.

## Usage

```bash
git clone github.com/sebkolind/dotfiles ~/dotfiles
```

Now, you can either copy or symlink files and directories to the location they need to be in. I prefer and recommend symlinks since those will be updated when you pull new changes from origin.

### bash

```bash
ln -s ~/dotfiles/.bashrc ~/
ln -s ~/dotfiles/.bash_profile ~/
ln -s ~/dotfiles/bashrc.d ~/
```

### neovim

Requires [vim-plug](https://github.com/junegunn/vim-plug).

```bash
ln -s ~/dotfiles/nvim ~/.config/
```

- [Install vim-plug](https://github.com/junegunn/vim-plug)
- Run `:PlugInstall`

### i3status

Requires [i3status](https://github.com/i3/i3status).

```bash
ln -s ~/dotfiles/i3status ~/.config/
```

### .Xresources

Requires [Input Mono](https://input.djr.com/download/).

```bash
ln -s ~/dotfiles/.Xresources ~/
```

## FAQ

1. Why don't you have a `./install.sh` script?
    1. It's very rare that you would want _all_ of my dotfiles, which an install script would require. I might write a script where you can customize what to install - someday.

