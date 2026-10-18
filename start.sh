python -m http.server "$PORT" &
git --version
git clone --depth 1 https://github.com/AAA3A-AAA3A/AAA3A-cogs /tmp/gittest 2>&1 || echo "GIT CLONE FAILED"
printf '%s\n%s\n%s\n%s\n%s\n' "$PGHOST" "$PGPORT" "$PGUSER" "$PGPASSWORD" "$PGDATABASE" | redbot-setup --no-prompt --instance-name red --data-path /data --backend postgres
redbot red --token "$TOKEN" --prefix "$PREFIX" --no-prompt


