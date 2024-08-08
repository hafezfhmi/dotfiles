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

- Symlinks:

  - `komorebi\komorebi.json --> C:\Users\hafezfhmi\komorebi.json`
  - `komorebi\applications.yaml --> C:\Users\hafezfhmi\applications.yaml`
  - `komorebi\.config/whkdrc --> C:\Users\hafezfhmi\.config\whkdrc`

- Notes:

  - Enable komorebi autostart

    ```shell
    komorebic.exe enable-autostart --whkd
    ```

  - Creating symlinks in windows requires administrator privileges. Run the following command in PowerShell as an administrator. Remove /d if it is a file.

    ```shell
    Start-Process -Verb RunAs powershell.exe -Args 'cmd /c mklink /d symlink-path file-path'
    ```

## [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701?rtc=1&hl=en-my&gl=MY)

- Pre-requisite:

  - [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701?rtc=1&hl=en-my&gl=MY)
  - [Nerd Fonts - JetBrainsMono](https://www.nerdfonts.com/#home)

- Symlinks:

  - `windows-terminal\settings.json --> C:\Users\hafezfhmi\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`

- Notes:

  - Creating symlinks in windows requires administrator privileges. Run the following command in PowerShell as an administrator. Remove /d if it is a file.

    ```shell
    Start-Process -Verb RunAs powershell.exe -Args 'cmd /c mklink /d symlink-path file-path'
    ```
