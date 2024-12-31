# hafezfhmi's dotfiles

I mostly use Windows OS with WSL (Ubuntu) for my development environment. This repository contains my dotfiles for configuring my development environment.

## [Neovim](https://neovim.io/) ([LazyVim](https://www.lazyvim.org/))

- Pre-requisite:

  - [Neovim](https://neovim.io/)
  - [Git](https://git-scm.com)
  - [Nerd Fonts - JetBrainsMono](https://www.nerdfonts.com/#home)
  - [Lazygit](https://github.com/jesseduffield/lazygit)
  - [gcc - install using package manager](https://gcc.gnu.org)
  - [ripgrep](https://github.com/BurntSushi/ripgrep)
  - [fd](https://github.com/sharkdp/fd)

- Symlinks:

  - `nvim/.config/nvim --> ~/.config/nvim` (Linux)
  - `nvim\.config\nvim --> C:\Users\hafezfhmi\AppData\Local\nvim` (Windows)

## [Komorebi](https://github.com/LGUG2Z/komorebi)

- Pre-requisite:

  - [Komorebi](https://github.com/LGUG2Z/komorebi)
  - [AutoHotkey](https://scoop.sh/#/apps?q=autohotkey&id=a0ad197d665b3996fd64052d328b6f8874a6b8de)

- Symlinks:

  - `komorebi\komorebi.json --> C:\Users\hafezfhmi\komorebi.json`
  - `komorebi\applications.yaml --> C:\Users\hafezfhmi\applications.yaml`
  - `komorebi\komorebi.ahk --> C:\Users\hafezfhmi\komorebi.ahk`
  - `komorebi\.config\whkdrc --> C:\Users\hafezfhmi\.config\whkdrc`

- Notes:

  - Enable komorebi autostart

    ```shell
    komorebic.exe enable-autostart --ahk
    ```

  - Creating symlinks in windows requires administrator privileges. Run the following command in PowerShell as an administrator. Remove /d if it is a file.

    ```shell
    Start-Process -Verb RunAs powershell.exe -Args 'cmd /c mklink /d symlink-path file-path'
    ```

## [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701?rtc=1&hl=en-my&gl=MY)

- Pre-requisite:

  - [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701?rtc=1&hl=en-my&gl=MY)
  - [Nerd Fonts - JetBrainsMono](https://www.nerdfonts.com/#home)
  - [PowerShell](https://apps.microsoft.com/detail/9mz1snwt0n5d?rtc=1&hl=en-my&gl=MY)

- Symlinks:

  - `windows-terminal\settings.json --> C:\Users\hafezfhmi\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`

- Notes:

  - Creating symlinks in windows requires administrator privileges. Run the following command in PowerShell as an administrator. Remove /d if it is a file.

    ```shell
    Start-Process -Verb RunAs powershell.exe -Args 'cmd /c mklink /d symlink-path file-path'
    ```

  - If windows terminal is running, it will auto generate settings.json. Use another terminal to create this symlink.

## Z shell

- Pre-requisite:

  - [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
  - [Oh My Zsh](https://ohmyz.sh/)
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
  - [nvm](https://github.com/nvm-sh/nvm) (optional)
  - [Homebrew](https://brew.sh/) (optional)
  - [Neovim](https://neovim.io/) (optional)

- Symlinks:

  - `zsh/.zshrc --> ~/.zshrc`

## [Tmux](https://github.com/tmux/tmux/wiki)

- Pre-requisite:

  - [Tmux](https://github.com/tmux/tmux/wikihttps://github.com/tmux/tmux/wiki)
  - [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

- Symlinks:

  - `tmux/.config/tmux.conf --> ~/.config/tmux.conf`

- Notes:

  - Install plugins via TPM

  ```shell
    prefix + I
  ```

## [i3wm](https://i3wm.org)

- Pre-requisite:

  - [i3wm](https://i3wm.org)
  - [JetBrains Mono](https://www.nerdfonts.com)
    - `sudo apt install fonts-jetbrains-mono` 
  - [picom] (https://github.com/yshui/picom)
  - [alacritty] (https://github.com/alacritty/alacritty)
  - [polybar] (https://github.com/polybar/polybar)

- Symlinks:

  - `i3/.config/i3 --> ~/.config/i3`

## [picom](https://github.com/yshui/picom)

- Pre-requisite:

  - [i3wm](https://i3wm.org)
  - [picom] (https://github.com/yshui/picom)

- Symlinks:

  - `picom/.config/picom --> ~/.config/picom`

## [polybar](https://github.com/polybar/polybar)

- Pre-requisite:

  - [polybar](https://github.com/polybar/polybar)

- Symlinks:

  - `picom/.config/polybar --> ~/.config/polybar`

## [X11] (https://www.x.org/wiki)

- Symlinks:

  - `X11/xorg.conf.d --> ~/usr/share/X11/xorg.conf.d`
