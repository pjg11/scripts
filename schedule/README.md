# `schedule`

I wrote a blog post describing the details of this script - [Schedule posts with Jekyll](https://pjg1.site/schedule-jekyll). The script can be modified to work with any static site generator and hosting provider.

## Usage

```
% schedule <post> <datetime> <message>
```

- The `post` argument uses an inbuilt completion function, press <kbd>TAB</kbd> to choose from your current drafts.

- The `datetime` argument accepts a variety of formats, see `man at` for all the options.
    >**Note:** Your computer needs to be up and running at the specified date and time for `at` to work. So set the date and time accordingly.

- The `message` argument is provided to `git` when creating a commit.

![](schedule.gif)
Created using [**asciinema**](https://github.com/asciinema/asciinema) and [**agg**](https://github.come/asciinema/agg)

### Managing `at` jobs

- To see the job's script, type `at -c` followed by the job number mentioned in the output.
- To delete a job, type `atrm job` followed by the job number.
- To view the job queue, type `atq`.

## Installation

1. Add the `schedule` script to your functions folder. I'm using `~/.oh-my-zsh/functions` as an example.

    ```
    % chmod +x schedule && mv schedule ~/.oh-my-zsh/functions
    ```

2. Add the `_schedule` script to your completions folder. I'm using `~/.oh-my-zsh/completions` as an example.

    ```
    % chmod +x _schedule && mv _schedule ~/oh-my-zsh/completions
    ```

3. Link the completion function to the main function.
The shell needs to know that `_schedule` is a completion function for `schedule`. This is done using the `compdef` command. Add this line to your `.zshrc` file:

    ```
    compdef _schedule schedule
    ```

Restart your shell and you're good to go!
