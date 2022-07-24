# dotfiles

My dotfiles for setting up macOS with a clean install for photography, design, and development.

> After too many years of tinkering my machine is a bit all over. With ~Mojave~ ~High Sierra~ Monterey I wanted to start fresh

## 1. Run Software Update

Make sure everything is up to date.

<img width="667" alt="Screen Shot 2022-07-22 at 5 14 32 PM" src="https://user-images.githubusercontent.com/1280430/180582591-f99f25f6-f77c-4a7c-95fe-abcf079ded7d.png">

## 2. Generate SSH keys for GitHub

Visit [GitHub's official guide](https://help.github.com/articles/generating-ssh-keys#platform-mac) for instructions.

## 3. Install dotfiles

    $ git clone git@github.com:jimmynotjim/dotfiles.git ~/.dotfiles
    $ cd ~/.dotfiles
    $ ./setup.sh

## 4. Manual App Instalation

Unfortunately some apps aren't available through Homebrew, so you need to install them __manually__.

* [Adobe Suite](http://www.adobe.com/products/creativecloud.html) for image editing
* [Hex Color Picker](http://wafflesoftware.net/hexpicker/) adds hex values to system picker
* [Logi Options+](https://support.logi.com/hc/en-us/articles/4418699283607)
* [Logi Bolt](https://support.logi.com/hc/en-us/articles/4418089333655)


## All done, have fun!

## Thanks to all the dotfiles inspiration from:

[jayroh](https://github.com/jayrow/dotfiles.new)
[gabebw](https://github.com/gabebw/dotfiles)
[jeffbyrnes](https://github.com/jeffbyrnes/dotfiles)
[ericclemmons](https://github.com/ericclemmons/dotfiles)
