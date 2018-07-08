# Telegram-Notifier

This repository contains three scripts and one systemd-unit file that allow notification of a failed systemd unit via Telegram.

Get your own `telegram-bot-token` and `chat-id` and replace the placeholders in `etc/telegram/key.sh` then you will be able to:

1. Run `telegram "message"` in any shell script: Your bot will send you "message"
2. `unit-status-telegram systemd-unit-name"` in any shell script: Your bot will send you the status message of systemd-unit
3. Place `OnFailure=unit-status-telegram@%n.service` in the `Unit` section if any systemd-unit and be notified on its failure in telegram

Additionaly, you can get a notification when your server is shutdown, restarted or after boot.

Copy the files `etc/systemd/system/server-notification.service` and `usr/bin/startup-report.sh` to your system. Do not forget to make `startup-report.sh` executable.

Enable the service with

`systemctl enable server-notification.service`

You can check the status with

`systemctl status server-notification.service`
