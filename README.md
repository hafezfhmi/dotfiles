# hafezfhmi's dotfiles

I mostly use Windows OS with WSL (Ubuntu) for my development environment. This repository contains my dotfiles for configuring my development environment.

## Table of Contents

- [Configure Neovim with LazyVim in windows](#configure-neovim-with-lazyvim-in-windows)
- [Configure Neovim with LazyVim in linux (via WSL)](#configure-neovim-with-lazyvim-in-linux-via-wsl)
- [Configure komorebi tiling window manager for windows](#configure-komorebi-panning-window-manager-for-windows)
- [Customize Windows Powershell](#customoze-windows-powershell)

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

## Configure [komorebi](https://github.com/LGUG2Z/komorebi) panning window manager for windows

1. (Optional) Disable unnecessary system animations

   - It is highly recommended that you enable the "Turn off all unnecessary animations (when possible)" option in "Control Panel > Ease of Access > Ease of Access Centre / Make the computer easier to see" for the best performance with komorebi.

2. Install [komorebi](https://github.com/LGUG2Z/komorebi)

   ```shell
   scoop bucket add extras
   scoop install komorebi whkd
   ```

3. Create a softlink for komorebi config file

   ```shell
   # komorebi config file
   Start-Process -Verb RunAs powershell.exe -Args 'cmd /c mklink C:\Users\<user1>\komorebi.json C:\Users\<user1>\<pathtorepo>\komorebi.json'

   # whkd config file
   Start-Process -Verb RunAs powershell.exe -Args 'cmd /c mklink C:\Users\<user1>\.config\whkdrc C:\Users\<user1>\<pathtorepo>\.config\whkdrc'

   # application list config
   Start-Process -Verb RunAs powershell.exe -Args 'cmd /c mklink C:\Users\<user1>\applications.yaml C:\Users\<user1>\<pathtorepo>\applications.yaml'
   ```

4. Enable komorebi autostart

   ```shell
   komorebic.exe enable-autostart --whkd
   ```

   - This will create a startup file in `C:\Users\<user1>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`

5. (Optional) Start komorebi

   ```shell
   komorebic start --whkd
   ```

## Customize Windows Powershell

1. Install [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701?launch=true&mode=full&hl=en-us&gl=my&ocid=bingwebsearch)

2. Install [Nerd Fonts](https://www.nerdfonts.com/#home) .

   - Use [JetBrainsMono Nerd font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip)

3. Install [PowerShell](https://apps.microsoft.com/detail/9mz1snwt0n5d?launch=true&mode=full&hl=en-us&gl=my&ocid=bingwebsearch)

4. Add custom Windows terminal color scheme.

5. Open settings.json via Windows Terminal > Settings > Setting icon (bottom left)

6. In "schemes" key, add this object to the array:

   ```text
   {
      "background": "#001B26",
      "black": "#282C34",
      "blue": "#61AFEF",
      "brightBlack": "#5A6374",
      "brightBlue": "#61AFEF",
      "brightCyan": "#56B6C2",
      "brightGreen": "#98C379",
      "brightPurple": "#C678DD",
      "brightRed": "#E06C75",
      "brightWhite": "#DCDFE4",
      "brightYellow": "#E5C07B",
      "cursorColor": "#FFFFFF",
      "cyan": "#56B6C2",
      "foreground": "#DCDFE4",
      "green": "#98C379",
      "name": "One Half Dark (modded)",
      "purple": "#C678DD",
      "red": "#E06C75",
      "selectionBackground": "#FFFFFF",
      "white": "#DCDFE4",
      "yellow": "#E5C07B"
   }
   ```

7. Configure Windows terminal.

   1. Windows Terminal > Settings > Startup > Default terminal application (choose Windows Terminal)

   2. Windows Terminal > Settings > Startup > Default profile (choose Powershell)

   3. Windows Terminal > Settings > Appearance > Use acrylic material in the tab row (enable)

   4. Windows Terminal > Settings > Defaults > Appearance > Font Size (9)

   5. Windows Terminal > Settings > Defaults > Appearance > Color scheme (One Half Dark (modded))

   6. Windows Terminal > Settings > Defaults > Appearance > Font face (JetBrainsMono Nerd Font)

   7. Windows Terminal > Settings > Defaults > Appearance > Background opacity (50%)

   8. Windows Terminal > Settings > Defaults > Appearance > Enable acrylic material (enable)

8. Install [Scoop](https://scoop.sh/)

   ```shell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
   ```

9. Install [Oh My Posh](https://ohmyposh.dev/)

   ```
   scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
   ```

10. Install [posh-git](https://github.com/dahlbyk/posh-git)

    ```
    scoop bucket add extras
    scoop install posh-git
    Add-PoshGitToProfile
    ```

11. Install [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)

    ```
    scoop bucket add extras
    scoop install terminal-icons
    ```

12. Install [z directory jumper](https://github.com/badmotorfinger/z)

    ```
    Install-Module z -AllowClobber
    ```

13. Install [PSReadLine](https://github.com/PowerShell/PSReadLine)

    ```
    Install-Module PSReadLine
    ```

14. Install [PSFzf](https://github.com/kelleyma49/PSFzf)

    ```
    Install-Module -Name PSFzf
    ```

15. Create a link for powershell config

    ```shell
    Start-Process -Verb RunAs powershell.exe -Args 'cmd /c mklink C:\Users\<user1>\.config\powershell C:\Users\<user1>\<pathtorepo>\.config\powershell'
    ```

16. Use the powershell config

    ```shell
    vim $PROFILE.CurrentUserCurrentHost
    ```

    - Paste:

      ```text
      . $env:USERPROFILE\.config\powershell\user_profile.ps1`
      ```

17. Reload powershell profile

    ```shell
    . $PROFILE
    ```
