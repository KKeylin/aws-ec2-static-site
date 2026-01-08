
#!/usr/bin/env bash
set -euo pipefail

DEST="/opt/static-data"

# Создадим каталог если не существует
mkdir -p "$DEST"

# Проставим права
chown -R www-data:www-data "$DEST" || true
find "$DEST" -type d -exec chmod 755 {} \; || true
find "$DEST" -type f -exec chmod 644 {} \; || true

echo "[CodeDeploy] Static data deployed successfully at $(date)"
