#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p mnt
}

mount_iso () {
	mount_workstation
}

mount_workstation () {
	sudo mount -o loop Fedora-Workstation-Live-x86_64-36-1.5.iso mnt
}

__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
