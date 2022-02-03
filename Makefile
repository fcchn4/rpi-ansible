# Run Ansible Roles
#include .env

## Variables

## Default Define
.DEFAULT: all
all: base-update base-packages base-cockpit

## Tasks
base-update:
	@echo "[x] Updating Operating System"
	@ansible-playbook base-update.yml -i inventory/inventory.yml

base-packages:
	@echo "[x] Installing Base Package"
	@ansible-playbook base-package.yml -i inventory/inventory.yml 

k3s-server:
	@echo "[x] Installing K3s Server"
	@ansible-playbook k3s-server.yml -i inventory/inventory.yml

k3s-agents:
	@echo "[x] Installing K3s Agents"
	@ansible-playbook k3s-agents.yml -i inventory/inventory.yml
