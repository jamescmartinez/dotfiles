# List all git repositories in the current directory ordered by their most
# recent commit.
function list_git_repos
    for dir in */
        if test -d "$dir/.git"
            set commit_date (git -C "$dir" log -1 --format="%at" 2>/dev/null)
            if test -n "$commit_date"
                echo (date -r $commit_date '+%Y-%m-%d %H:%M:%S')" $dir"
            end
        end
    end | sort -r | head -n 10
end
