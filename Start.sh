python -m http.server "$PORT" &
redbot-setup --no-prompt --instance-name red --data-path /data --backend postgres || true
redbot red --token "$TOKEN" --prefix "$PREFIX" --no-prompt
