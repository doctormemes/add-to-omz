# add-to-omz OhMyZsh plugin

This plugin adds a command/function that can be used to easily and simply install OhMyZsh plugins and themes from GitHub by simply specifying whether you are adding a theme or plugin and the repo's git URL.

**Syntax**

`add-to-omz <type> <git-repo-url>`

**Example**

`add-to-omz plugin https://github.com/doctormemes/add-to-omz.git`

**Be sure to add the plugin to your plugins in .zshrc**

```
plugins=(... add-to-omz)
```

I also included a nice little usage help message to be displayed when the command is run without any arguments and when something is wrong.
