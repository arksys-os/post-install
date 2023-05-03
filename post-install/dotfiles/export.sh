#!/bin/bash

EXPORT_DIR="/path/to/export/directory"

# create export directory if it doesn't exist
mkdir -p "${EXPORT_DIR}"

# find all config files in home directory that start with a dot
CONFIG_FILES=$(find ~ -maxdepth 1 -type f -name ".*")

# loop over config files and export them to export directory
for CONFIG_FILE in ${CONFIG_FILES}; do
  cp "${CONFIG_FILE}" "${EXPORT_DIR}"
done

echo "Exported $(echo "${CONFIG_FILES}" | wc -w) config files to ${EXPORT_DIR}"
