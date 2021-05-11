# tmux-cowboy

~~Just kill that damned stale process!~~ Send a signal to a process running
inside a current pane.

Useful when you're annoyed by the stale program and just want to get rid of it.

NOTE: this plugin calls a `kill -9 <pid>` command and that's potentially
dangerous. Use this plugin at your own responsibility. That said, I'm using
this on my personal computer. If there are bugs I'll be the first to know.

### Key bindings

- <kbd>prefix</kbd> <kbd> * </kbd> - end the process running in the current
  pane with `kill -9`

### FAQ

Q: What's with the name? Why "cowboy"?<br/>
A: Because you go pew-pew killing those bad processes.

### License

[MIT](LICENSE.md)
