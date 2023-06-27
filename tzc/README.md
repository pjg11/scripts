# `tzc`

Convert time from any timezone to your local time.

Inspired from a post by Hyde Stevenson - [CLI of the week #19](https://lazybear.io/posts/cli-of-the-week-19/).

## Usage

```console
% tzc [-h] <time> <timezone>
```

The timezone argument uses an inbuilt [completion function](https://scriptingosx.com/2019/07/moving-to-zsh-part-5-completions/), press the Tab key to view a set of valid options.

```console
% tzc 11am <TAB>
+VERSION     CST6CDT      Europe/      Hongkong     MST          Portugal     WET
Africa/      Canada/      Factory      Iceland      MST7MDT      ROC          Zulu
America/     Chile/       GB           Indian/      Mexico/      ROK          iso3166.tab
Antarctica/  Cuba         GB-Eire      Iran         NZ           Singapore    leapseconds
Arctic/      EET          GMT          Israel       NZ-CHAT      Turkey       posixrules
Asia/        EST          GMT+0        Jamaica      Navajo       UCT          zone.tab
Atlantic/    EST5EDT      GMT-0        Japan        PRC          US/
Australia/   Egypt        GMT0         Kwajalein    PST8PDT      UTC
Brazil/      Eire         Greenwich    Libya        Pacific/     Universal
CET          Etc/         HST          MET          Poland       W-SU
```

## Installation

1. Add the `tzc` script to your functions folder. I'm using `~/.oh-my-zsh/functions` as an example

```console
% mv tzc ~/.oh-my-zsh/functions
```

2. Add the `_tzc` script to your completions folder. I'm using `~/.oh-my-zsh/completions` as an example

```console
% mv _tzc ~/.oh-my-zsh/completions
```

3. Link the completion function to the main function.
The shell needs to know that `_tzc` is a completion function for `tzc`. This is done using the `compdef` command. Add this line to your `.zshrc` file:

```zsh
compdef _tzc tzc
```

Restart your shell and you're good to go!
