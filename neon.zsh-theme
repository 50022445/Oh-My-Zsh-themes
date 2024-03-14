# Define return status color
local return_status="%{$fg[magenta]%}%(?..⏎)%{$reset_color%}"

# Define host color based on SSH connection
local host_color="magenta" # Default color is magenta
if [ -n "$SSH_CLIENT" ]; then
  local host_color="cyan" # Change to cyan if SSH connection exists
fi

# Define the main prompt
PROMPT="%{$fg_bold[green]%}[ %{$reset_color%}%{$fg_bold[${host_color}]%}%n@%m%{$reset_color%}%{$fg_bold[green]%} ]%{$reset_color%} %{$fg_bold[blue]%}%10c %W %t %{$reset_color%}%{$fg_bold[green]%} $(git_prompt_info) $(git_remote_status)%{$reset_color%}
%{$fg_bold[blue]%} ❯%{$reset_color%} " # Prompt symbol color is purple

# Uncomment the lines below if you want to include Internet IP address
#PROMPT="%{$fg_bold[yellow]%}[%{$reset_color%}%{$fg_bold[${host_color}]%}%n@%m%{$reset_color%}%{$fg_bold[yellow]%}]%{$reset_color%} %{$fg_bold[blue]%}%10c %W %t $(curl -s http://ipecho.net/plain; echo) %{$reset_color%} $(git_prompt_info) $(git_remote_status)
#%{$fg_bold[purple]%}❯%{$reset_color%} " # Prompt symbol color is purple

# Define Git prompt prefixes and suffixes
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}(%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}) %{$fg[blue]%}⚡%{$reset_color%}" # Dirty state symbol is blue
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%})" # Clean state symbol color is yellow
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[purple]%}↓%{$reset_color%}" # Behind remote symbol color is purple
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[purple]%}↑%{$reset_color%}" # Ahead remote symbol color is purple
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[purple]%}↕%{$reset_color%}" # Diverged remote symbol color is purple
