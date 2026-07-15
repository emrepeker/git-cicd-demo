#!/usr/bin/env bash

set -euo pipefail

ENVIRONMENT="${1:-}"
VERSION="${2:-unknown}"

if [[ "$ENVIRONMENT" != "development" && "$ENVIRONMENT" != "production" ]]; then
    echo "Invalid environment: $ENVIRONMENT"
    exit 1
fi

echo "Starting mock deployment"
echo "Environment: $ENVIRONMENT"
echo "Version: $VERSION"

mkdir -p deployment-output

{
    echo "environment=$ENVIRONMENT"
    echo "version=$VERSION"
    echo "status=success"
    echo "deployed_at=$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
} > deployment-output/deployment-receipt.txt

echo "Mock deployment completed successfully"