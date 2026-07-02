#!/usr/bin/with-contenv bashio

PORT=$(bashio::config 'port')
API_KEY=$(bashio::config 'api_key')
READ_ONLY=$(bashio::config 'read_only')
MAX_FILE_SIZE_MB=$(bashio::config 'max_file_size_mb')
ENABLE_HA_CLI=$(bashio::config 'enable_ha_cli')
ALLOWED_DIRS=$(bashio::config 'allowed_dirs')

export MCP_PORT=$PORT
export MCP_API_KEY=$API_KEY
export MCP_READ_ONLY=$READ_ONLY
export MCP_MAX_FILE_SIZE_MB=$MAX_FILE_SIZE_MB
export MCP_ENABLE_HA_CLI=$ENABLE_HA_CLI
export MCP_ALLOWED_DIRS="\$ALLOWED_DIRS"

bashio::log.info "Starting MCP File Server on port \$PORT"

cd /app
exec python3 mcp_server.py
