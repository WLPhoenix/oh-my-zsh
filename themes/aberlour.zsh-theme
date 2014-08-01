if [[ $UID -eq 0 ]]; then
# root color scheme
  bg_color="red";
  path_color="white";
  prompt_color="red"
  prompt_symbol=" !! "
  user_color="red"
else
  bg_color="017";
  path_color="242";
  prompt_color="green"
  prompt_symbol=" >> "
  user_color="green"
fi;

time_color="242";
host_color="053"

prompt_path() {
    echo -n "%F{${path_color}} %~%f"
}

promt_ts() {
    echo -n "%F{${time_color}}%*%f"
}

prompt_symbol() {
    echo -n "%F{${prompt_color}}${prompt_symbol}%f"
}

rprompt_user() {
    echo -n "%F{${user_color}}%n%f"
}

rprompt_host() {
    echo -n "%F{${host_color}}%m%f"
}

PROMPT="%{%f%k%b%}
%K{${bg_color}}$(prompt_path)%E%k
$(promt_ts)$(prompt_symbol)"

RPS1="$(rprompt_user)%F{cyan}@%f$(rprompt_host)"
