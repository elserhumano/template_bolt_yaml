#!/usr/bin/env bash
# tasks/init_controlplane.sh
# Initializes the Kubernetes control plane using kubeadm.
# Configures kubectl for both root and vagrant users.
# Saves the join command for worker nodes.
# Bolt injects variables via environment:
#   PT_node_ip          — master IP on host-only network (e.g. 192.168.167.10)
#   PT_pod_network_cidr — pod CIDR (e.g. 10.244.0.0/16)
#   PT_service_cidr     — service CIDR (e.g. 10.96.0.0/12)
#   PT_k8s_version      — Kubernetes version (e.g. 1.30)
#   PT_cluster_name     — cluster name
#   PT_node_ip_interface — host-only interface name
set -euo pipefail

GREEN='\033[0;32m'; YELLOW='\033[1;33m'; NC='\033[0m'
info()    { echo -e "${GREEN}[INFO]${NC} $*"; }
warning() { echo -e "${YELLOW}[WARN]${NC} $*"; }

NODE_IP="${PT_node_ip:-192.168.167.10}"
POD_CIDR="${PT_pod_network_cidr:-10.244.0.0/16}"
SVC_CIDR="${PT_service_cidr:-10.96.0.0/12}"
K8S_VERSION="${PT_k8s_version:-1.30}"
CLUSTER_NAME="${PT_cluster_name:-k8s-lab}"

# ── 1. Check if already initialized ────────────────────────
#
# Put here the logic of your bash file you can use the variables as usual.
# For example:
#               ping $NODE_IP
#
