# Getting started

Files will be synced via cron job.

1. Install `cronie`.
2. Install `rclone`.
3. Setup google drive config in rclone.
4. Manually execute the content in rclone-bisync with `--resync --dry-run` to test the sync.
5. Manually execute the content in rclone-bisync with `--resync` for first time sync.
6. Add the cronjob in crontab using `crontab -e` and paste the line below:
```shell
  0 * * * * /home/hafezfhmi/dotfiles/rclone/rclone-bisync.sh
```

- To view the list of added cron jobs, use `crontab -l`
- To view your cron job logs, use `journalctl -u cronie --since "1 hour ago"`

