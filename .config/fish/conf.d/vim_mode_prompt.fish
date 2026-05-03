function fish_mode_prompt
    switch $fish_bind_mode
        case default
            set_color --bold f7768e # red — danger/normal mode
            echo '[N]'
        case insert
            set_color --bold 9ece6a # green — safe/insert mode
            echo '[I]'
        case replace_one
            set_color --bold e0af68 # yellow — caution/single replace
            echo '[R]'
        case replace
            set_color --bold ff9e64 # orange — stronger caution/replace mode
            echo '[R]'
        case visual
            set_color --bold bb9af7 # purple — visual mode
            echo '[V]'
    end
    set_color normal
    echo -n ' '
end
