# Personal desktop configuration using qtile for arch.
***
![alt text](" screen")
***
## Software to install.

| Software            |
|:-------------------:|
| [xorg](https://wiki.archlinux.org/title/xorg)|
| [xorg-server](https://archlinux.org/packages/extra/x86_64/xorg-server/)|
| [xorg-xinit](https://archlinux.org/packages/extra/x86_64/xorg-xinit/)|
| [qtile](http://www.qtile.org/)|
| [lightdm](https://wiki.archlinux.org/title/LightDM)|
| [lightdm-gtk-greeter](https://archlinux.org/packages/extra/x86_64/lightdm-gtk-greeter/)|
| [kitty](https://sw.kovidgoyal.net/kitty/)|
| [rofi](https://wiki.archlinux.org/title/rofi)|
| [sed](https://archlinux.org/packages/core/x86_64/sed/)
| [which](https://archlinux.org/packages/core/x86_64/which/)|
| [feh](https://wiki.archlinux.org/title/feh)|
| [pulseaudio](https://wiki.archlinux.org/title/PulseAudio)|
| [pavucontrol](https://archlinux.org/packages/extra/x86_64/pavucontrol/)|
| [brightnessctl](https://man.archlinux.org/man/community/brightnessctl/brightnessctl.1.en)|
| [picom](https://man.archlinux.org/man/community/brightnessctl/brightnessctl.1.en)|
| [volumeicon](https://archlinux.org/packages/community/x86_64/volumeicon/)|
| [udiskie](https://man.archlinux.org/man/community/udiskie/udiskie.8.en) |
| [udisks2](https://archlinux.org/packages/extra/x86_64/udisks2/)|
| [thunar](https://wiki.archlinux.org/title/Thunar_(Espa%C3%B1ol))|
| [scrot](https://archlinux.org/packages/community/x86_64/scrot/)|
| [lxappearance](https://archlinux.org/packages/community/x86_64/lxappearance/)|
| [notification-daemon](https://wiki.archlinux.org/title/Desktop_notifications)|
| [cbatticon](https://man.archlinux.org/man/cbatticon.1.en)|
| [network-manager-applet](https://archlinux.org/packages/extra/x86_64/network-manager-applet/)

***
## Fonts.

| Fonts                             |
|:--------------------------------:|
|[ttf-hack-nerd](https://archlinux.org/packages/community/any/ttf-hack-nerd/)                     |
|[ttf-meslo-nerd-font-powerlevel10k](https://aur.archlinux.org/packages/ttf-meslo-nerd-font-powerlevel10k) |
|[ttf-ubuntu-mono-nerd](https://archlinux.org/packages/community/any/ttf-ubuntu-mono-nerd/)              |
***
## Extra software.

| Software|
|:--------:|
| [exa](https://archlinux.org/packages/community/x86_64/exa/)|
| [neovim](https://neovim.io/)|
| [oh-my-zsh](https://ohmyz.sh/)|
***
## Start up.

#### All the commands and steps will be listed from the way I did it.
#### First we need a clean install of [Arch Linux](https://archlinux.org/) and then we can start.
***********
To be more comfortable we can use [xrandr](https://wiki.archlinux.org/title/xrandr) to set the resolution of the screen.

Don´t forget to update [Arch](https://archlinux.org/).

```
sudo pacman -Syu
``` 
***

Now we have to install a couple of things we can use this line.
```
sudo pacman -S xorg xorg-server qtile lightdm ligthdm-gtk-greeter kitty
```
> You can use if you want any terminal like xterm or alacritty the new features of qtile detect your terminal. 

Then we enable lightdm to start wen we boot the pc.

```
sudo systemctl enable lightdm
```

Now we can reboot and see the log in of our system.

```
reboot now
```

Now we can download some fonts.

>You can choose any font you just have to make some adjustments in the code.

```
sudo pacman -S ttf-hack-nerd ttf-meslo-nerd-font-powerlevel10k ttf-ubuntu-mono-nerd
```

We install [feh](https://wiki.archlinux.org/title/feh) to set a wallpaper.

```
feh --bg-fill /wallpaper.png
```

>Chose the route where you have your wallpaper. 

Now we can start making edits on [.config/qtile/config.py]() or you can copy my configuration on this repo.

>To apply changes on qtile we can use mod+ctrl+r. 
>The "mod" key is commonly known as the Windows key. (The one with the windows logo).

To use a menu to start up applications we use rofi.

```
sudo pacman -S which sed rofi
```

To choose a theme we can use a command.

```
rofi-theme-selector
```

Now we install some packages to complete our config.

```
sudo pacman -S pulseaudio pavucontrol brightnessctl xorg-init picom volumeicon udisk thunar udiskie udisks2 scort lxappearance notification-daemon cbatticon network-manager-applet
```

Before we shut down our pc or reboot we need to add startup file [autostart. sh]() and edit [. Xsession]() and we are ready to use the basic config on our system.

***

# Extra configuration.

I like to use some extra software to give an extra appearance of my desktop.

I like to use [oh-my-zsh](https://ohmyz.sh/) with the team [Powerlevel10k](https://github.com/romkatv/powerlevel10k) you can configure all this in your own way so you can start coding.

>If you want to use my config an my plugins, I let you the [.zshrc]() code so you can use my plugins and config just remember to move it to `home/user/`.

>To use my zsh config you well need to clone some repos from gitgub so you can use some plugins and install some packages.

***

To make more interactive the terminal y uses [exa](https://archlinux.org/packages/community/x86_64/exa/) to add some colors if you want this you will have to edit [.zshrc]() y will let you my config so you can copy both you can make your own alias in this section.

```
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll="exa -lah"
alias ls="exa -l"
alias tree="exa -T"
```

For editing code and text, I usually use the Visual Studio code but I always like to use [neovim](https://neovim.io/) on some cases.
To install it you can use this.

```
sudo pacman -S
#Make a link cos the classic apps use to use vim
sudo ln -s nvim vim
```

To add a theme to your kitty just follows the steps [here]() y like the obsidian one.

### In all the code I comment the lines that I don't use you can uncomment or add something  to make this configuration on your own.

