#!/bin/bash

export OPENSHIFT_PYTHON_IP=0.0.0.0
export OPENSHIFT_PYTHON_PORT=5000
export FFMPEG_PATH=ffmpeg/ffmpeg
export OPENSHIFT_POSTGRESQL_DB_HOST=0.0.0.0
export OPENSHIFT_POSTGRESQL_DB_PORT=5432
export OPENSHIFT_POSTGRESQL_DB_USERNAME=aa
export OPENSHIFT_POSTGRESQL_DB_PASSWORD=aa
export POSTGRESQL_DB_NAME=anyaudio

# /home/ubuntu/miniconda2/bin/python app.py
/home/ubuntu/miniconda2/bin/gunicorn --workers 3 --bind unix:anyaudio.sock -m 007 wsgi:app
