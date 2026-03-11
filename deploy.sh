#!/bin/bash
set -e

APP_NAME="claude-cowork-retail-sales"
PORT=4008

echo "=========================================="
echo "  Deploying Claude Cowork Retail Sales"
echo "  Container: $APP_NAME"
echo "  Port: $PORT"
echo "=========================================="

cd "$(dirname "$0")"

echo ""
echo "[1/4] Stopping existing container (if any)..."
docker compose down 2>/dev/null || true

echo ""
echo "[2/4] Building Docker image..."
docker compose build --no-cache

echo ""
echo "[3/4] Starting container on port $PORT..."
docker compose up -d

echo ""
echo "[4/4] Verifying deployment..."
sleep 3

if docker ps --filter "name=$APP_NAME" --filter "status=running" -q | grep -q .; then
    echo ""
    echo "=========================================="
    echo "  Deployment successful!"
    echo "  Running at: http://localhost:$PORT"
    echo "  Container:  $APP_NAME"
    echo ""
    echo "  For Nginx Proxy Manager:"
    echo "  Forward hostname: $APP_NAME"
    echo "  Forward port:     80"
    echo "  (or use host IP with port $PORT)"
    echo "=========================================="
else
    echo ""
    echo "ERROR: Container failed to start."
    echo "Check logs with: docker logs $APP_NAME"
    exit 1
fi
