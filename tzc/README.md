# `tzc`

Convert time from any timezone to your local time.

Inspired from a post by Hyde Stevenson - [CLI of the week #19](https://lazybear.io/posts/cli-of-the-week-19/).

## Usage

```
% tzc [-h] <time> <timezone>
```

The timezone argument uses an inbuilt [completion function](https://scriptingosx.com/2019/07/moving-to-zsh-part-5-completions/), press the Tab key to view a set of valid options.

![](tzc.gif)
Created using [**asciinema**](https://github.com/asciinema/asciinema) and [**agg**](https://github.com/asciinema/agg)

## Installation

1. Add the `tzc` script to your functions folder. I'm using `~/.oh-my-zsh/functions` as an example

    ```
    % chmod +x tzc && mv tzc ~/.oh-my-zsh/functions
    ```

2. Add the `_tzc` script to your completions folder. I'm using `~/.oh-my-zsh/completions` as an example

    ```
    % chmod +x _tzc && mv _tzc ~/.oh-my-zsh/completions
    ```

3. Link the completion function to the main function.
The shell needs to know that `_tzc` is a completion function for `tzc`. This is done using the `compdef` command. Add this line to your `.zshrc` file:

    ```
    compdef _tzc tzc
    ```

Restart your shell and you're good to go!
