#!/bin/bash
echo "Open in browser: http://falcon-server:5000/quote"
. activate py37_web
gunicorn -b localhost:5000 sample_get_json:api --reload
