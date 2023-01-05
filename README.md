# dotfiles

This repo contains all my configurations and scripts. <br>
[`alacritty`](/alacritty) - alacritty config <br>
[`bash`](/bash) - .bashrc (default .bashrc with some tweaks) and .bash_aliases. <br>
[`config`](/config) - alacritty, picom, dunst, sxhkd, pywal, sxiv and zathura config files. <br>
[`local`](/local) - contains all my shell scripts. <br>
[`nvim`](/nvim) - nvim config <br>
[`picom`](/picom) - picom config <br>
[`shell`](/shell) - inputrc <br>
[`sxhkd`](/sxhkd) - sxhkd config <br>
[`sxiv`](/sxiv) - sxiv key handler (w to set wallpaper) <br>
[`tmux`](/tmux) - tmux config. <br>
[`vim`](/vim) - all my vim config. <br>
[`wal`](/wal) - dunst and zathura templates <br>
[`x11`](/x11) - xinitrc, xprofile and xresources <br>
[`zsh`](/zsh) - zshrc, zprofile and fzf completion file <br>

## Installation

Before Installation backup your dotfiles. Clone the repo in your home dir and create sym links using GNU stow.

```bash
git clone https://github.com/PrajvalBadiger/dotfiles ~/.dotfiles/
cd ~/.dotfiles/ 
stow alacritty bash config nvim picom shell sxhkd sxiv tmux vim wal x11 zsh
```
Use below command to get shell scripts
```bash
stow local
```
