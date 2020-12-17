#!/bin/sh

to_vim()
{
  ESC=`printf "\e"`
  BELL=`printf "\a"`
  PRE=${ESC}']51;["call", "FzfPick_ShellExecute", '
  POST=']'${BELL}
  printf "${PRE} [\"$*\"] ${POST}"
}

fzf_pick_file=$(fzf)
if [[ $fzf_pick_file ]]; then
  to_vim edit $fzf_pick_file
fi
