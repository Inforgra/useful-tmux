function utmux () {
  TMUX=/usr/bin/tmux
  SESSION=tmux-$(whoami)
  [ ! -z $1 ] && SESSION=${SESSION}-$1
  [ $(${TMUX} list-session | grep ${SESSION} | wc -l) -eq 0 ] && ${TMUX} new -s ${SESSION}
  ${TMUX} attach -t ${SESSION}
}
