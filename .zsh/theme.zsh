# ---------- 文字色 ----------
local COLOR_FG_LIGHTBLUE="%{[38;5;081m%}"
local COLOR_FG_BLUE="%{[38;5;033m%}"
local COLOR_FG_DEEPGREEN="%{[38;5;034m%}"
local COLOR_FG_GREEN="%{[38;5;082m%}"
local COLOR_FG_ORANGE="%{[38;5;214m%}"
local COLOR_FG_PINK="%{[38;5;200m%}"
local COLOR_FG_RED="%{[38;5;196m%}"

# ---------- 背景色 ----------
local COLOR_BG_GREEN="%{[30;48;5;082m%}"
local COLOR_END="%{[0m%}"

GIT_PROMPT_DIRTY="${COLOR_FG_RED}✘✘✘"
GIT_PROMPT_CLEAN="${COLOR_FG_GREEN}✔"

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || echo ${SHORT_HOST:-$HOST}
}

precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

PROMPT="╭─${COLOR_FG_GREEN}%n${COLOR_END} at ${COLOR_FG_ORANGE}$(box_name)${COLOR_END} in %B${COLOR_FG_PINK}%d${COLOR_END}%b using %1(v|${COLOR_FG_LIGHTBLUE}%1v${COLOR_END}|)
╰─ "
