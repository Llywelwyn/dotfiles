function bm
    cd "$(pda list b -o csv --no-header | cut -d, -f2 | fzf)"
end
