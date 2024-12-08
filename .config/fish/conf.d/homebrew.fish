for bindir in /usr/local/bin /opt/homebrew/bin
    test -d $bindir && fish_add_path -p $bindir
end
type -q brew && eval (brew shellenv)
