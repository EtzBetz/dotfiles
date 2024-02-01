
PROMPT="%(?:%{$fg_bold[green]%}%1{%} :%{$fg_bold[red]%}%1{%} )%{$reset_color%}// %(4~|.../%3~|%~) %{$reset_color%}"
PROMPT+='// -> '
RPROMPT='// $(get_ip_address) $(git_super_status)'

ZSH_THEME_GIT_PROMPT_PREFIX="// "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_BRANCH="%{%G%} "
ZSH_THEME_GIT_PROMPT_STAGED=" //%{$fg_bold[blue]%} %{●%G%} %{$reset_color%}"        # new file is added to commit, but not committed
ZSH_THEME_GIT_PROMPT_CONFLICTS=" //%{$fg_bold[red]%} %{⚑%G%} %{$reset_color%}"      # ???
ZSH_THEME_GIT_PROMPT_CHANGED=" //%{$fg_bold[yellow]%} %{●%G%} %{$reset_color%}"     # tracked files are being changed
ZSH_THEME_GIT_PROMPT_DELETED=" //%{$fg_bold[red]%} %{●%G%} %{$reset_color%}"        # tracked files that are being deleted
ZSH_THEME_GIT_PROMPT_BEHIND=" // %{↓%G%} "                                          # things to pull are available
ZSH_THEME_GIT_PROMPT_AHEAD=" // %{↑%G%} "                                           # commit is not pushed yet
ZSH_THEME_GIT_PROMPT_UNTRACKED=" //%{$fg_bold[green]%} %{●%G%} %{$reset_color%}"    # untracked files exist
ZSH_THEME_GIT_PROMPT_STASHED=" // %{⚑%G%} "                                         # stashed files
ZSH_THEME_GIT_PROMPT_CLEAN=" //%{$fg_bold[green]%} %{●%G%}"                         # it is all clean
ZSH_THEME_GIT_PROMPT_UPSTREAM_SEPARATOR="->"                                        # if upstream origin is enabled, this is the separator

get_ip_address() {
  if [[ -n "$(networksetup -getinfo Wi-Fi | grep 'Subnet mask: ')" ]]; then
    echo "$(ifconfig en0 | awk '/inet / {print $2}')%{$reset_color%}"
  else
    echo "%{$bg_bold[red]%} No IP %{$reset_color%}"
  fi
}