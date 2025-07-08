#!/bin/bash

# Hata olursa script dursun
set -e

# Dizin
APP_DIR=$(pwd)

echo "✅ Proje dizini: $APP_DIR"

# go.mod yoksa oluştur
if [ ! -f "$APP_DIR/go.mod" ]; then
  echo "ℹ️ go.mod bulunamadı. Oluşturuluyor..."
  go mod init app
else
  echo "✅ go.mod zaten var, atlanıyor."
fi

# Docker image adı
IMAGE_NAME="hello-app"

# Docker build
echo "🐳 Docker image build ediliyor: $IMAGE_NAME"
docker build -t $IMAGE_NAME .

# Docker çalıştır
echo "🚀 Container çalıştırılıyor..."
docker run --rm $IMAGE_NAME
