# Company Managed Stuff
source ~/.indeed_zshrc


# VS Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Initialize pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# Find and set branch name if in git repository

function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo ' %F{51}git:%f ('%F{13}$branch%f')'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Appearance
# Prompt with user@host
# PROMPT=$'%B%F{13}%n@%m%f%b %F{51}%~%f %F{13}$(git_branch_name)%f \U1F47B '

# Prompt without user@host
PROMPT=$'%F{13}%~%f $(git_branch_name) \U1F47B '
