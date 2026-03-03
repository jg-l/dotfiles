function spec
    # Find the git repo root (or use cwd)
    set repo_root (git rev-parse --show-toplevel 2>/dev/null)
    if test $status -ne 0
        set repo_root (pwd)
    end

    set problems_dir "$repo_root/for_claude/problems"

    # Create dirs if they don't exist
    mkdir -p "$problems_dir"
    mkdir -p "$repo_root/for_claude/logs"

    # Find the next P number
    set next 1
    while test -e "$problems_dir/P$next.md"
        set next (math $next + 1)
    end

    set new_file "$problems_dir/P$next.md"

    echo "Creating $new_file"
    vim "$new_file"
end
