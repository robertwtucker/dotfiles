# jenv initialization
if status is-interactive
    set -gx PATH '/Users/robert/.jenv/shims' $PATH
    set -gx JENV_SHELL fish
    set -gx JENV_LOADED 1
    set -e JAVA_HOME
    set -e JDK_HOME
    if set -q HOMEBREW_PREFIX
        source "$HOMEBREW_PREFIX/opt/jenv/completions/jenv.fish"
    end
    jenv rehash 2>/dev/null
    jenv refresh-plugins
end
