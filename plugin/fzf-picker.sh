#!/bin/sh

to_vim()
{
  ESC=`printf "\e"`
  BELL=`printf "\a"`
  PRE=${ESC}']51;["call", "FzfPick_ShellExecute", '
  POST=']'${BELL}
  printf "${PRE} [\"$*\"] ${POST}"
}

to_vim edit $(fzf)
