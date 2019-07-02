#!/bin/bash
echo "Open in browser: http://0.0.0.0:5001/test"
gunicorn -b 0.0.0.0:5001 sample_get_string:app --reload


