# add-to-omz OhMyZsh plugin

This plugin adds a command/function that can be used to easily and simply install OhMyZsh plugins and themes from GitHub by simply specifying the HTTPS (or SSH) repo URL and whether you are adding a theme, or a plugin.

**Syntax**

`add-to-omz <git-repo-url> <type>`

**Example**

`add-to-omz https://github.com/doctormemes/add-to-omz.git plugin`

**Be sure to add the plugin to your plugins in .zshrc**

```
plugins=(... add-to-omz)
```

I also included a nice little usage help message to be displayed when the command is run without any arguments and when something is wrong.
