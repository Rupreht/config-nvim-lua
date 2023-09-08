# NeoVIM Config

## Requirements

### Install JetBrainsMono Fonts

```sh
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono font-jetbrains-mono-nerd-font
```

> see more [GitHub: JetBrainsMono Fonts](https://github.com/JetBrains/JetBrainsMono)

### Insatll Just-In-Time Compiler (JIT) for the Lua programming language

```sh
brew install luajit
```

### Make a backup of your current nvim folder

```sh
mv ~/.config/nvim ~/.config/nvim.bak
```

### Clean nvim share & cache

```sh
rm -rf ~/.local/share/nvim ~/.cache/nvim
```

## Insatll NeoVIM

```sh
brew install neovim
```

## Options

### Add New Editor (for Linux)

```sh
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/nvim 50
```
