function __fzf_ghq_repository_search -d 'Repository search'
    set -l query (commandline -b)
    [ -n "$query" ]; and set flags --query="$query"; or set flags

    ghq list | eval (__fzfcmd) $flags | read select

    [ -n "$select" ]; and cd (ghq root)"/$select"; and echo
    commandline -f repaint
end
