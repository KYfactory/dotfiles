#PATH
export PATH=$PATH:~/Library/Android/sdk/platform-tools
# 日本語を使用
export LANG=ja_JP.UTF-8

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# vim キーバインドを使用
bindkey -v

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# ヒストリーに重複を表示しない
setopt hist_ignore_all_dups
# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space
# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks
# シェルを横断して.zshhistoryに記録
setopt inc_append_history
# ヒストリを共有
setopt share_history
# ヒストリ用キーバインド
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# 色を使用
autoload -Uz colors
colors

# git の情報を取得
autoload -Uz vcs_info

# ディレクトリ移動時に再度情報取得
setopt prompt_subst

# ---------- その他の設定を読み込む ---------

ZSHHOME="${HOME}/.zsh"

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
  -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
      [[ ${i##*/} = *.zsh ]] &&
        [ \( -f $i -o -h $i \) -a -r $i ] && . $i
  done
fi
