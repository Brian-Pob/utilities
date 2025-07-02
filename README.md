# utilities

This repo contains some useful files that I've made for a bunch of purposes.

## How to Use

Download each file and use them as you wish. If you would like to access these files via CDN, you can use my url `https://utils.brianmp.dev/f/*`
and replace `*` with the name of the file you wish to access. This just redirects to [jsdelivr](https://www.jsdelivr.com/).

For example, https://utils.brianmp.dev/f/.vimrc will take you to my .vimrc file containing my vim configs.

This is useful when you want to grab a config file from a system that doesn't have a GUI.

```bash
# with curl
# -L to follow redirects
# -O to use the file's original name
curl -L -O https://utils.brianmp.dev/f/.tmux.conf

# with wget
wget https://utils.brianmp.dev/f/index.html
```


## index.html

[index.html](/index.html) contains the code for https://utilities.brianmp.dev,
a website that I made for showcasing some other tools that I find useful.
What's special about this file is that it is a template for Progressive Web Apps
along with all the Open Graph meta tags that you would need for sharing your site.

## reset.css

[reset.css](/reset.css) contains a CSS reset that I like to use for my personal
projects. It is based on resets from other developers that are way more skilled
than I am, mainly [Andy Bell](https://piccalil.li/author/andy-bell/) and 
[Kevin Powell](https://www.kevinpowell.co/).

## experimental.css

[experimental.css](/experimental.css) has some styling that is experimental that I want to try across multiple projects. It kind
of exists on top of reset.css but with stuff that might not be widely supported yet or stuff that I might not want to use in production
environments at the moment.

## dotfiles

[.vimrc](/.vimrc) and [.tmux.conf](/.tmux.conf) contain my config files for vim and tmux respectively.
You will find comments explaining what the config does.