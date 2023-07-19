# Sourcing dotfiles
source ~/.bash_prompt
source ~/.bashrc

#------------------------------ 

# inputrc files

# autocompletion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Set Vi keybinding in Bash
set -o vi

# Make Tab autocomplete regardless of filename case
set completion-ignore-case on

# List all matches in case multiple possible completions are possible
set show-all-if-ambiguous on

# Show all autocomplete results at once
set page-completions off

# Show extra file information when completing, like `ls -F` does
set visible-stats on

# Be more intelligent when autocompleting by also looking at the text after
# the cursor. For example, when the current line is "cd ~/src/mozil", and
# the cursor is on the "z", pressing Tab will not autocomplete it to "cd
# ~/src/mozillail", but to "cd ~/src/mozilla". (This is supported by the
# Readline used by Bash 4.)
set skip-completed-text on

# Allow UTF-8 input and output, instead of showing stuff like $'\0123\0456'
set input-meta on
set output-meta on
set convert-meta off

# Flip through autocompletion matches with Shift-Tab.
# "\e[Z": menu-complete

# ============================== 

# functions

#script to update brew packages
update(){
	brew update && brew upgrade && brew cleanup
}

#Function to commit nd push local changes to github repository
github(){
	git add .
	git commit -m "$1"
	git pull --rebase
	git push -u origin $2

}

# ================================================== 

# aliases


alias ip='curl curlmyip.net'

# alias useful for tracking dot-files
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


# ============================== 

# Created by `pipx` on 2023-04-11 00:29:16
export PATH="$PATH:/Users/shubham/.local/bin"
eval "$(register-python-argcomplete pipx)"

# removes warning that zsh is default shell in mac
export BASH_SILENCE_DEPRECATION_WARNING=1
