# scripts

A collection of aliases and functions that I use on a regular basis. 
These are designed for and tested on the `zsh` shell, the default shell for MacOS and Kali Linux.

## Initial Setup

This is a quick guide on the initial setup required to install functions in `zsh`. 
Any specific instructions for functions are mentioned in its own README file.

1. Create a folder to store your functions and completions.

    If you use [oh-my-zsh](https://ohmyz.sh):
    ```console
    % mkdir ~/.oh-my-zsh/functions
    % mkdir ~/.oh-my-zsh/completions
    ```
    
    If not, then a folder in your home directory works too:
    ```console
    % mkdir ~/.zsh_functions
    % mkdir ~/.zsh_completions
    ```

2. If you don't use oh-my-zsh, add your functions and completions directory to `FPATH`. `FPATH` is similar to how the `PATH` environment variable works, it looks for functions in the listed folders when a function is called.
Add the following line to your `.zshrc` file:

    ```zsh
    export FPATH=~/.zsh_functions:~/.zsh_completions:$FPATH
    ```

3. Autoload all functions and completions. Once you've added a function to the folder, it needs to be loaded 
each time a shell session starts. Add the following lines to your `.zshrc` file:

    ```zsh
    autoload -U ~/.zsh_functions/*(.:t)
    autoload -U ~/zsh_completions/*(.:t)
    ```

This setup will make it easier to add functions in the future, or even create your own!
