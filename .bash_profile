# .bash_profile

# 現在ディレクトリの取得
cd `dirname $0`
CUR_DIR=`pwd`

# エイリアス
alias ls='ls --color=auto'
alias vim="vim -u $CUR_DIR/.vimrc"

# WPA環境変数の読み込み
WPAENV=/usr/local/wpa/bin/wpaenv.sh
if [ -f $WPAENV ]; then
    source $WPAENV
fi

# git環境設定の読み込み
GIT_PROMPT=$CUR_DIR/.git-prompt.sh
if [ -f $GIT_PROMPT ]; then
    source $GIT_PROMPT
fi
GIT_COMPLETION=$CUR_DIR/.git-completion.bash
if [ -f $GIT_COMPLETION ]; then
    source $GIT_COMPLETION
fi

# ターミナルのコマンド受付状態の表示変更
COLOR=$CUR_DIR/.color
if [ -f $COLOR ]; then
    source $COLOR
fi
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
PS1="${WHITE}[${RESET}\u${RED}@${RESET}\h${WHITE}:${RESET}\W${YELLOW}\$(__git_ps1)${RESET}${WHITE}]\$${RESET} "

# 読み込み完了の表示
echo -e "${RED}load: $CUR_DIR/.bash_profile${RESET}"