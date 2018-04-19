#!/bin/bash

echo "limpando exemplo"


kubectl delete -f aplicacao.yaml
kubectl delete -f deployment.yaml
kubectl delete -f servico-aplicacao.yaml

kubectl get pods,deploy,svc
