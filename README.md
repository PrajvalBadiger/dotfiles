# dotfiles

This repo contains all my configurations and scripts. <br>
[`bash`](/bash) - .bashrc (default .bashrc with some tweaks) and .bash_aliases. <br>
[`config`](/config) - alacritty, picom, dunst, sxhkd, pywal, sxiv and zathura config files. <br>
[`local`](/local) - contains all my bash scripts. <br>
[`tmux`](/tmux) - tmux config. <br>
[`vim`](/vim) - all my vim config. <br>
[`x11`](/x11) - xinitrc, xprofile and xresources
[`zsh`](/zsh) - zshrc, zprofile and fzf completion file

## Installation

Before Installation backup your dotfiles. Clone the repo in your home dir and create sym links using GNU stow.

```bash
git clone https://github.com/PrajvalBadiger/dotfiles ~/.dotfiles/
cd ~/.dotfiles/ 
stow bash config tmux vim x11 zsh
```
You can also install scripts by cearting sym link with stow.

```bash
stow local
```
