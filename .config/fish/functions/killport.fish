# Kill process listening on a specific port.
function killport
    set port $argv[1]
    set pid (lsof -t -iTCP:$port -sTCP:LISTEN)

    if test -n "$pid"
        kill -9 $pid
        echo "Killed process $pid on port $port"
    else
        echo "No process found listening on port $port"
    end
end
