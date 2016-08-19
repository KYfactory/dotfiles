# 補完
autoload -U compinit
compinit

# ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash

# 補完候補一覧でファイルの種別を識別マーク表示 (訳注:ls -F の記号)
setopt list_types

# コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt magic_equal_subst

# 日本語ファイル名等8ビットを通す
setopt print_eight_bit
#
# 明確なドットの指定なしで.から始まるファイルをマッチ
setopt globdots

# 補完候補を ←↓↑→ でも選択出来るようにする
zstyle ':completion:*:default' menu select=1
