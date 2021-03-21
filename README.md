Probably the cleanest dotfiles you've ever seen.

## Requirements

- https://github.com/neovim/neovim (>=v0.5)
- https://github.com/junegunn/fzf
- https://github.com/clvv/fasd
- https://github.com/ranger/ranger
- https://github.com/jesseduffield/lazygit

> All of these might have some dependency requirements, which you would have to solve yourself.

## Usage

```bash
git clone github.com/sebastianks/dotfiles ~/dotfiles
```

### bash

```bash
ln -s ~/dotfiles/.bashrc ~/
ln -s ~/dotfiles/.bash_profile ~/
ln -s ~/dotfiles/bashrc.d ~/
```

### neovim

```bash
ln -s ~/dotfiles/nvim ~/.config/
```

- [Install vim-plug](https://github.com/junegunn/vim-plug)
- Run `:PlugInstall`
