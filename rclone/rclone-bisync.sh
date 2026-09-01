#!/bin/bash
rclone bisync /home/hafezfhmi/Obsidian hafezfhmi.dev:/Obsidian --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case
