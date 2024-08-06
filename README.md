# hafezfhmi's dotfiles

I mostly use Windows OS with WSL (Ubuntu) for my development environment. This repository contains my dotfiles for configuring my development environment.

## Table of Contents

- [Configure Neovim with LazyVim in windows](#configure-neovim-with-lazyvim-in-windows)
- [Configure Neovim with LazyVim in linux (via WSL)](#configure-neovim-with-lazyvim-in-linux-via-wsl)

## Configure [Neovim](https://neovim.io/) with [LazyVim](https://www.lazyvim.org/) in windows

1. Install [Scoop](https://scoop.sh/)

   ```shell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
   ```

2. Install [neovim](https://neovim.io/)

   ```shell
   scoop bucket add main
   scoop install neovim
   ```

3. Install [git](https://git-scm.com)

   ```shell
   winget install --id Git.Git -e --source winget
   ```

4. Install [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701?launch=true&mode=full&hl=en-us&gl=my&ocid=bingwebsearch)

5. Install [Nerd Fonts](https://www.nerdfonts.com/#home) in your terminal.

   - Use [JetBrainsMono Nerd font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip)
   - Apply it in your [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701?launch=true&mode=full&hl=en-us&gl=my&ocid=bingwebsearch)

6. Install [lazygit](https://github.com/jesseduffield/lazygit?tab=readme-ov-file)

   ```shell
   scoop bucket add extras
   scoop install lazygit
   ```

7. Install [gcc](https://gcc.gnu.org)

   ```shell
   scoop install gcc
   ```

8. Install [ripgrep](https://github.com/BurntSushi/ripgrep)

   ```shell
   scoop install ripgrep
   ```

9. Install [fd](https://github.com/sharkdp/fd?tab=readme-ov-file#installation)

   ```shell
   scoop install fd
   ```

10. Install [Python](https://www.python.org/downloads/windows/)

    - Make sure you can run python using 'python' in the terminal.
      If it opens up Windows store, use this solution: [CMD opens Windows Store when I type 'python' - Stack Overflow](https://stackoverflow.com/questions/58754860/cmd-opens-windows-store-when-i-type-python)

11. Create a soft link of the nvim config from the repo

    ```shell
    Start-Process -Verb RunAs powershell.exe -Args 'cmd /c mklink /d $env:LOCALAPPDATA\nvim C:\Users\<user1>\<pathtorepo>\nvim'
    ```

    - Replace `<user1>` with your user and `<pathtorepo>` with path to the cloned repository.

## Configure [Neovim](https://neovim.io/) with [LazyVim](https://www.lazyvim.org/) in Linux (via WSL)

1. Install [WSL](https://docs.microsoft.com/en-us/windows/wsl/install)
   (preferably Ubuntu distro)

2. (Optional - Windows) Install [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701?launch=true&mode=full&hl=en-us&gl=my&ocid=bingwebsearch)

3. (Optional - Windows) Install [Nerd Fonts](https://www.nerdfonts.com/#home) in your terminal.

   - Use [JetBrainsMono Nerd font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip)
   - Apply it in your [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701?launch=true&mode=full&hl=en-us&gl=my&ocid=bingwebsearch)

4. Install [neovim](https://neovim.io/)

   - Follow the official installation [instruction](https://github.com/neovim/neovim/blob/master/INSTALL.md#appimage-universal-linux-package)

5. Install [git](https://git-scm.com)

   ```bash
   sudo apt-get install git
   ```

6. Install [lazygit](https://github.com/jesseduffield/lazygit?tab=readme-ov-file)

   ```bash
   LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
   curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
   tar xf lazygit.tar.gz lazygit
   sudo install lazygit /usr/local/bin
   ```

7. Install [gcc](https://gcc.gnu.org)

   ```bash
   sudo apt install gcc
   ```

8. Install [ripgrep](https://github.com/BurntSushi/ripgrep)

   ```bash
   curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep_14.1.0-1_amd64.deb
   sudo dpkg -i ripgrep_14.1.0-1_amd64.deb
   ```

9. Install [fd](https://github.com/sharkdp/fd?tab=readme-ov-file#installation)

   ```bash
   sudo apt install fd-find
   ```

10. Install [Python](https://www.python.org/downloads/windows/)

    ```bash
      sudo apt install python3
    ```

11. Create a soft link of the nvim config from the repo

    ```bash
    ln -s /home/<user1>/<pathtorepo>/nvim /home/<user1>/.config/nvim
    ```

    - Replace `<user1>` with your user and `<pathtorepo>` with path to the cloned repository.
