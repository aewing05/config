# BEGIN env Setup -- Managed by Ansible DO NOT EDIT.

# Setup INDEED_ENV_DIR earlier.
if [ -z "${INDEED_ENV_DIR}" ]; then
    export INDEED_ENV_DIR="/Users/aewing/env"
fi

# Single-brace syntax because this is required in bash and sh alike
if [ -e "${INDEED_ENV_DIR}/etc/indeedrc" ]; then
    . "${INDEED_ENV_DIR}/etc/indeedrc"
fi
# END env Setup -- Managed by Ansible DO NOT EDIT.

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Initialize pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


. "/Users/aewing/.indeed-kube-profile"


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
