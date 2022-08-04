# dotfiles

_There are many ~~rifles~~ dotfiles but this one is mine!_

My personal dotfiles for setting up macOS with a clean install for photography, design, and development.

> After too many years of tinkering, my machine is a bit all over. With ~~Mojave~~ ~~High Sierra~~ Monterey I wanted a fresh start - Me, every few years

## 1. Run Software Update

Make sure everything is up to date.

<img width="667" alt="Screen Shot 2022-07-22 at 5 14 32 PM" src="https://user-images.githubusercontent.com/1280430/180582591-f99f25f6-f77c-4a7c-95fe-abcf079ded7d.png">

## 2. Generate SSH keys for GitHub

Visit [GitHub's official guide](https://help.github.com/articles/generating-ssh-keys#platform-mac) for instructions.

## 3. Grant disk access to terminal

Apple limits terminal access to disk in macOS Mojave +, grant access or some of the scripts will fail.

`System Preferences > Security & Privacy > Privacy > Full Disk Access`

## 4. Install dotfiles

    $ git clone git@github.com:jimmynotjim/dotfiles.git ~/.dotfiles
    $ cd ~/.dotfiles
    $ bash install

## 4. Manual App Instalation

Unfortunately some apps aren't available through Homebrew, so you need to install them **manually**.

- [Adobe Suite](http://www.adobe.com/products/creativecloud.html) for image editing
- [Hex Color Picker](http://wafflesoftware.net/hexpicker/) adds hex values to system picker
- [Logi Options+](https://support.logi.com/hc/en-us/articles/4418699283607)
- [Logi Bolt](https://support.logi.com/hc/en-us/articles/4418089333655)

## 5. iTerm 2 theme

I prefer to match the Github Dark Dimmed theme I already use in VSCode, luckily it's [available for iTerm 2](https://github.com/cdalvaro/github-vscode-theme-iterm).

## 6. Countdown screensaver

I started out using this screensaver to track how many days it had been since my office had closed for Covid, but before they could reopen I changed jobs, so it's a moo point now. Lately I've had it set to the day I transitioned from carpentry to tech as a reminder of how far I've come and how lucky I am.

https://github.com/soffes/Countdown

## All done, have fun!

## Thanks to all the dotfiles inspiration from:

- [sobolevn](https://github.com/sobolevn/dotfiles)
- [jayroh](https://github.com/jayrow/dotfiles.new)
- [gabebw](https://github.com/gabebw/dotfiles)
- [jeffbyrnes](https://github.com/jeffbyrnes/dotfiles)
- [ericclemmons](https://github.com/ericclemmons/dotfiles)
- [cliss](https://gist.github.com/cliss/74782128b9a35366ecac44a7c4b45752)
- [mathiasbynens](https://github.com/mathiasbynens/dotfiles)
- [dotbot](https://github.com/anishathalye/dotbot)
- [macos-defaults](https://macos-defaults.com)
