DIR="$HOME/.config/polybar"
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar -q top-1 -c "$DIR"/config.ini &
polybar -q top-2 -c "$DIR"/config.ini &
