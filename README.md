# hafezfhmi's dotfiles

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
