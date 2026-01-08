
#!/usr/bin/env bash
set -euo pipefail

DEST="/opt/static-data"

# Права для веб-сервера (если Nginx/Apache)
chown -R www-data:www-data "$DEST" || true
find "$DEST" -type d -exec chmod 755 {} \;
find "$DEST" -type f -exec chmod 644 {} \;

echo "Static data deployed successfully at $(date)"
``
