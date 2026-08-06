function cscp --description 'Copy a file to the Codespace (pick with fzf if no file given)'
    set -l codespace pixo-rework-major-x55pgxrr6qcvpr7

    set -l file $argv[1]

    if test -z "$file"
        set file (find . -maxdepth 1 -type f -not -name '.*' \
            | string replace -r '^\./' '' \
            | sort \
            | fzf --prompt 'copy to codespace > ' --height 40% --reverse)
        or return # fzf cancelled (Esc)

        if test -z "$file"
            echo "No file selected." >&2
            return 1
        end
    end

    if not test -f "$file"
        echo "No such file: $file" >&2
        return 1
    end

    set -l dest (basename "$file")

    echo "→ $file  ⇒  remote:$dest  ($codespace)"
    gh codespace cp $file "remote:$dest" -e -c $codespace
    and echo "✓ Uploaded as $dest"
end
