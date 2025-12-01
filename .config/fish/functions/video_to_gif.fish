# Convert .mov/.mp4 to .gif (15fps).
function video_to_gif
    set input $argv[1]
    if not test -f $input
        echo "Not found: $input"
        return 1
    end

    set output (string replace -r '\.[^.]+$' '.gif' $input)
    ffmpeg -i $input -r 15 $output
end
