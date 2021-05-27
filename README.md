Probably the cleanest dotfiles you've ever seen.

## Requirements

- [fzf](https://github.com/junegunn/fzf)
  - [fd](https://github.com/sharkdp/fd)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [oh-my-bash](https://github.com/ohmybash/oh-my-bash)

> All of these might have some dependency requirements which you would have to solve yourself.

## Usage

```bash
git clone github.com/sebkolind/dotfiles $HOME/dotfiles
```

Now, you can either copy or symlink files and directories to the location they need to be in. I prefer and recommend symlinks since those will be updated when you pull new changes from origin.

### Fonts

[Input](https://input.djr.com/download/) is my font of choice, and is included in Mono, Sans and Serif. I don't think symlinking fonts makes any sense, since changes to a font is rare.

```bash
cp -R $HOME/dotfiles/.fonts/* $HOME/.fonts/.
```

### Bash

Requires [oh-my-bash](https://github.com/ohmybash/oh-my-bash).

```bash
ln -s $HOME/dotfiles/.bashrc $HOME/
ln -s $HOME/dotfiles/.bash_profile $HOME/
ln -s $HOME/dotfiles/bashrc.d $HOME/
```

### .Xresources

Requires [Input Mono](https://input.djr.com/download/).

```bash
ln -s $HOME/dotfiles/.Xresources $HOME/
```

---

## TODO

1. Add Sublime Text config
2. Add Lazygit config

---

## FAQ

1. Why don't you have a `./install.sh` script?
   1. It's very rare that you would want _all_ of my dotfiles, which an install script would require. I might write a script where you can customize what to install - someday.
