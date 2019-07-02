#!/bin/bash
echo "Open in browser: http://0.0.0.0:5000/quote"
gunicorn -b 0.0.0.0:5000 sample_get_json:api --reload

