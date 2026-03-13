#!/usr/bin/env bash
# Exit if any command fails
set -e

# Run Django migrations
python manage.py migrate

# Load initial data
python manage.py loaddata category_data.json --ignorenonexistent
python manage.py loaddata product_data.json --ignorenonexistent

echo "Post-deploy tasks complete!"