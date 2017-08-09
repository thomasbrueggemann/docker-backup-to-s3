#!/bin/bash

set -e

echo "Job started: $(date)"

cp -R "$DATA_PATH" /tmp/data
/usr/local/bin/s3cmd sync $PARAMS /tmp/data "$S3_PATH"
rm -R /tmp/data

echo "Job finished: $(date)"
