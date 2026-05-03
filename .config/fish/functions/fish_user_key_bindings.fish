# Use a user key binding function to ensure it loads after default modes
function fish_user_key_bindings
    # Accepts the full suggestion in insert mode
    bind -M insert \cf accept-autosuggestion
    # Optional: also bind for normal/default mode
    bind \cf accept-autosuggestion
end
