python -m http.server "$PORT" &
printf '%s\n%s\n%s\n%s\n%s\n' "$PGHOST" "$PGPORT" "$PGUSER" "$PGPASSWORD" "$PGDATABASE" | redbot-setup --no-prompt --instance-name red --data-path /data --backend postgres
redbot red --token "$TOKEN" --prefix "$PREFIX" --no-prompt --debug

