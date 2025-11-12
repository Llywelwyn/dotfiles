function bm-add
    set name $argv[1]
    if test -z "$name"
        echo "usage: bm-add <key>"
        return 1
    end
    pda set "$name@b" (realpath .)
end
