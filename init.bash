[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source ~/.config/bash/env.bash
source ~/.config/bash/alias.bash

# bash のコマンドを読み込む
source ~/.config/bash/command.bash

#-- インストールされていないコマンドを表示する
# command.bash とファイル名が紛らわしいねぇ
source ~/.config/bash/command-checker.bash

export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[36m\]\$(parse_git_branch)\[\033[00m\]\$ "

# ローカルの設定ファイルが存在する場合は読み込む
if [ -f ~/.local.bash ]; then
    source ~/.local.bash
else
    echo "~/.local.bash が見つかりません。ローカル設定ファイルを作成してください。"
fi
