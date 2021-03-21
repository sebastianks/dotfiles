Probably the cleanest dotfiles you've ever seen.

## Requirements

- [neovim](https://github.com/neovim/neovim)
- [fzf](https://github.com/junegunn/fzf)
- [fasd](https://github.com/clvv/fasd)
- [ranger](https://github.com/ranger/ranger)
- [lazygit](https://github.com/jesseduffield/lazygit)

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
