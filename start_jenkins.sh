#!/bin/bash

echo "🚀 Minikube başlatılıyor..."
minikube start

echo "✅ Pod durumu kontrol ediliyor..."
kubectl get pods -n jenkins

echo "🔌 Port forwarding başlatılıyor (8080:8080)..."
kubectl --namespace jenkins port-forward svc/jenkins 8080:8080
