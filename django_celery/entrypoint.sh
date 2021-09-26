#!/bin/sh
# chmod +x app/entrypoint.sh

python manage.py migrate
python manage.py collectstatic --no-input --clear

exec "$@"