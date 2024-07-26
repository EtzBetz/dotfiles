
# print green or red dot depending on return value of last command
RETURNPROMPT="%{$bg[black]%} // %(?:%{$fg_bold[green]%}%1{●%}:%{$fg_bold[red]%}%1{●%})%{$reset_color%}%{$bg[black]%} // %{$reset_color%}"

# nothing to say here, just print the symbols
INPUTPROMPT=" %{$reset_color%} -> "

# if pwd is longer than 4 directories, show tail, otherwise print (basically) %~
PROMPT='
  %{$bg[black]%} // %(4~|$(get_dir_tail)|$(get_path_parent)$(get_base_dir)) // %{$reset_color%}
  ${RETURNPROMPT}${INPUTPROMPT}'

# print current en0 ip address and git status as right prompt, if available
RPROMPT='%{$(echotc UP 1)%} %{$bg[black]%} // $(get_ip_address) $(git_super_status)// %{$reset_color%} %{$(echotc DO 1)%}'

ZSH_THEME_GIT_PROMPT_PREFIX="// "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$bg[black]%} "
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_BRANCH="%{%G%} %{$bg[black]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$bg[black]%} //%{$fg_bold[blue]%} %{●%G%} %{$reset_color%}%{$bg[black]%}"        # new file is added to commit, but not committed
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$bg[black]%} //%{$fg_bold[red]%} %{⚑%G%} %{$reset_color%}%{$bg[black]%}"      # ???
ZSH_THEME_GIT_PROMPT_CHANGED="%{$bg[black]%} //%{$fg_bold[yellow]%} %{●%G%} %{$reset_color%}%{$bg[black]%}"     # tracked files are being changed
ZSH_THEME_GIT_PROMPT_DELETED="%{$bg[black]%} //%{$fg_bold[red]%} %{●%G%} %{$reset_color%}%{$bg[black]%}"        # tracked files that are being deleted
ZSH_THEME_GIT_PROMPT_BEHIND=" // %{↓%G%} "                                          # things to pull are available
ZSH_THEME_GIT_PROMPT_AHEAD=" // %{↑%G%} "                                           # commit is not pushed yet
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$bg[black]%} //%{$fg_bold[green]%} %{●%G%} %{$reset_color%}%{$bg[black]%}"    # untracked files exist
ZSH_THEME_GIT_PROMPT_STASHED=" // %{⚑%G%} "                                         # stashed files
ZSH_THEME_GIT_PROMPT_CLEAN="%{$bg[black]%} //%{$fg_bold[green]%} %{●%G%}%{$bg[black]%}"                         # it is all clean
ZSH_THEME_GIT_PROMPT_UPSTREAM_SEPARATOR="->"                                        # if upstream origin is enabled, this is the separator

get_ip_address() {
  if [[ -n "$(networksetup -getinfo Wi-Fi | grep 'Subnet mask: ')" ]]; then
    echo "$(ifconfig en0 | awk '/inet / {print $2}')%{$reset_color%}%{$bg[black]%}"
  else
    echo "%K{#ce5666} No IP %k%{$bg[black]%}"
  fi
}

get_dir_tail() {
  echo ".../$(basename $(dirname "$(dirname "$PWD")"))/$(basename $(dirname "$PWD"))/%{$fg_bold[white]%}%1~%{$reset_color%}%{$bg[black]%}"
}

get_path_parent() {
  # substitude '/Users/raphael' with '~' from the full PWD
  FRONTPATH=${PWD:s/\/Users\/raphael/\~}
  if [ "$FRONTPATH" = "~" ] || [ "$FRONTPATH" = "/" ]; then
    # user is in userhome, FRONTPATH can be emptied, because get_base_dir is displaying '~'
    FRONTPATH=""
  else
    # remove content after the last '/', including '/'
    FRONTPATH=${FRONTPATH%/*}
    # add the '/' back
    FRONTPATH+="/"
  fi
  echo "$FRONTPATH"
}

get_base_dir() {
  dir="%{$fg_bold[white]%}"
  basename="$(basename "$PWD")"
  if [ "$basename" = "raphael" ]; then
    dir+="~"
  else
    dir+="$basename"
  fi
  dir+="%{$reset_color%}%{$bg[black]%}"
  echo "$dir"
}