# Shell functions

# Video compression for web
web-convert() {
  if [ -z "$1" ]; then
    echo "Usage: web-convert <input_video>"
    return 1
  fi

  local input="$1"
  local dir="$(dirname "$input")"
  local filename="$(basename "$input")"
  local name="${filename%.*}"
  local output="$dir/${name}_compressed.mp4"

  echo "Converting $input to $output..."
  ffmpeg -i "$input" \
    -c:v libx264 \
    -preset medium \
    -crf 23 \
    -c:a aac \
    -b:a 128k \
    -movflags +faststart \
    -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" \
    "$output" && echo "Conversion complete: $output"
}
