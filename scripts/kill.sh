#!/usr/bin/env bash

SIGNAL="${1:-KILL}"

pane_pid() {
  tmux display-message -p "#{pane_pid}"
}

pid() {
  local pane_pid="$(pane_pid)"

  ps -ao "ppid pid" |
    sed "s/^ *//" |
    grep "^${pane_pid}" |
    cut -d' ' -f2- |
    head -n 1
}

main() {
  local pid="$(pid)"

  if [ -n "$pid" ]; then
    kill -${SIGNAL} $pid
  fi
}
main
