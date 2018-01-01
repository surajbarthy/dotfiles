function fish_prompt
	if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end
    set_color cyan
    printf '%s' (whoami)
    set_color normal
    printf '@'

    set_color cyan
    echo -n (prompt_hostname)
    set_color normal
    printf ' in '

    set_color brred
    printf '%s' (prompt_pwd)
    set_color normal

    # Line 2
    echo
    printf '🐠 '
    set_color normal
end