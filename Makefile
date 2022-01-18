# Run Ansible Roles
#include .env

## Variables

## Default Define
.DEFAULT: all
all: base-update base-packages base-cockpit

## Tasks
base-update:
	@echo "[x] Updating Operating System"
	@ansible-playbook base-update-rpi.yml -i inventory/inventory.yml

base-packages:
	@echo "[x] Installing Base Package"
	@ansible-playbook base-package-rpi.yml -i inventory/inventory.yml 

base-cockpit:
	@echo "[x] Install and config Cockpit"
	@ansible-playbook base-cockpit-rpi.yml -i inventory/inventory.yml 
