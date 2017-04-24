# Lukas Schmelzeisen's dotfiles

[![screenshot of the configuration](screenshot.png)](screenshot.png)

## Dependencies

The configured programs together with the dependencies of their configuration
are:

- [awesome](https://awesomewm.org/)
    - [lain](https://github.com/copycat-killer/lain) for an additional tiling
      layout and its separator widget.
- [compton](https://github.com/chjj/compton)
- [git](https://git-scm.com/)
- [JetBrains IDEs](https://www.jetbrains.com/products.html?fromMenu#type=ide)
    - [ideavim plugin](https://github.com/JetBrains/ideavim) for vim-like
      keybinds
- [rofi](https://davedavenport.github.io/rofi/)
- [vim](http://www.vim.org/)
    - [vim-plug](https://github.com/junegunn/vim-plug) for plugin management.
- [xfce4-terminal](https://launchpad.net/xfce4-terminal)
- [zathura](https://pwmt.org/projects/zathura/)

You'll also need the [Tamzen font](https://github.com/sunaku/tamzen-font).

## Installation

### dotfiles

The [Dotbot](https://github.com/anishathalye/dotbot) install script can be used
to automatically symlink the dotfiles in this repo:

```sh
git clone https://github.com/lukasschmelzeisen/dotfiles
cd dotfiles
sudo ./install
./install
```

Unfortunately, the line with `sudo` is necessary because else we can't create
symlinks in the `/etc` directory (this will also create dotfile symlinks in
root's home directory!).

If you dont wan't to perform automated installation (why would you want to copy
*all* my dotfiles?), have a look at the
[Dotbot configuration file](install.conf.yaml) to find out where each file
should go.

### vim

After first installation and everytime the plugin section in [vimrc](vimrc) is
changed `:PlugInstall` has to be executed in vim as root (because other users
can't write to `/usr/share/vim/vimfiles/plugged`).

### Manual Settings

This repo also contains some program settings which can not be installed
automatically.
These are:

- [JabRef](https://www.jabref.org/) - [settings](jabref.xml)
- [MusicBrainz Picard](https://picard.musicbrainz.org/) -
[settings](MusicBrainz%20Picard.txt)

## Theme

I use the [VimixDark](https://github.com/vinceliuice/vimix-gtk-themes) GTK2/3
theme together with the [Papirius](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
icon theme (Papirius supports fixing hardcoded tray icons with [Hardcode-Tray](https://github.com/bil-elmoussaoui/Hardcode-Tray),
[see here for instructions](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme#hardcoded-tray-icons)).

### JetBrains IDEs

There is a [theme for JetBrains IDEs](https://github.com/caleb/gruvbox-idea).
Install using the `install.bash` file and active in your IDE via `File →
Settings... → Editor → Colors & Fonts → Scheme → Gruvbox Dark Hard`.

### Eclipse

There is an Eclipse color scheme in [eclipse-gruvbox-dark-hard.xml](eclipse-gruvbox-dark-hard.xml),
which can be installed using the [Eclipse Color Theme](http://www.eclipsecolorthemes.org/?view=plugin)
plugin.
But this only changes the main editor window and has some bugs (e.g., bright
line separating code from gutter).
I'll need to look into Eclipse css theming in the future.

## Acknowledgements

The colors used in this configuration are taken from the [gruvbox-dark-hard
colorscheme by morhetz](https://github.com/morhetz/gruvbox).

The [wallpaper](awesome/themes/gruvbox-dark-hard/wallpaper.png) is [Alone by
memovasig](http://memovaslg.deviantart.com/art/Alone-353235628).

The [layout icons for awesome](awesome/themes/gruvbox-dark-hard/icons) are
taken and manually modified from the [powerarrow-dark theme](https://github.com/copycat-killer/awesome-copycats/tree/master/themes/powerarrow-dark)
from the [Awesome WM Copycats by copycat-killer](https://github.com/copycat-killer/awesome-copycats).

The  [xfce4-terminal colors](https://github.com/afg984/base16-xfce4-terminal/blob/master/colorschemes/base16-gruvbox-dark-hard.theme)
were automatically generated via the [base16](http://chriskempson.com/projects/base16/)
project from the colorscheme [base16-gruvbox-dark-hard by dawikur](https://github.com/dawikur/base16-gruvbox-scheme)
and template [xfce4-terminal by afg984](https://github.com/afg984/base16-xfce4-terminal).

## License

Copyright © 2017 Lukas Schmelzeisen.
Released under the MIT License.
See [LICENSE](LICENSE) for details.
