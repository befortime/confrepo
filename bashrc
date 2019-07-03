alias ll='ls -l -a'
alias vi='vim'

alias c1='source ~/.c1'
alias c2='source ~/.c2'
alias wget='wget --no-check-certificate'
alias gb='git branch'
alias gs='git status'
alias gss='git status -uno'
alias gc='git checkout'
alias gcd='git checkout development'
alias gm='git commit --amend --no-edit'
alias ga='git add -u'
alias gp='git diff-tree --no-commit-id --name-only -r HEAD | grep -E "py$" | xargs pycodestyle --ignore=E501,E128,E127,W606,W605,W292,E722'
alias gl='git log --author="Zhou Huang"'
alias gshow='git show --name-only'

# Setting PATH for Python 3.6
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}:$GOPATH:bin"
export PATH

export EDITOR=vim

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w \[\033[36m\]\t\[\033[m\] \[\033[32m\]\$(parse_git_branch)\[\033[00m\]\n\$ "
# Set the screen title
case $TERM in
    screen*)
        # This is the escape sequence ESC k ESC \
        SCREENTITLE='\[\ek\W\e\\\]'
        ;;
    *)
        SCREENTITLE=''
        ;;
esac
PS1="${SCREENTITLE}${PS1}"

export GOPATH=/Users/zhouhuang/develop/go
export GOBIN=/Users/zhouhuang/develop/go/bin
