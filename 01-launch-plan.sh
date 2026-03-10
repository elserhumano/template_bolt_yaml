#!/bin/bash
# 01-install-k8s.sh
# Lanza la instalación completa del cluster Kubernetes
# Ejecutar desde la raíz del proyecto en WSL2
set -euo pipefail

bolt plan run the_bolt_project_lab::example_plan --targets group_01 --params @params.json
