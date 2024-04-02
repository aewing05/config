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
# Prompt without user@host
PROMPT=$'%F{13}%~%f $(git_branch_name) \U1F47B '

# Obsidian Path
local obsidian_path='/Users/aewing/Library/Mobile Documents/iCloud~md~obsidian/Documents/aewing notes'

# Aliases
alias vim='nvim'
alias obsidian="cd '$obsidian_path' && vim '$obsidian_path'"
alias journal='sh ~/scripts/gen-templ.sh journal'
alias dailynote='sh ~/scripts/gen-templ.sh dailynote'
