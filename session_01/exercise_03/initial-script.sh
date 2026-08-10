#!/bin/bash

# Cập nhật hệ thống
sudo apt-get update && sudo apt-get upgrade -y

# Cài đặt gói phần mềm bắt buộc
sudo apt-get install -y openjdk-17-jdk git curl

# Kiểm tra và tạo nhóm quickbite nếu chưa tồn tại
if ! getent group quickbite > /dev/null 2>&1; then
  sudo groupadd quickbite
fi

# Tạo tài khoản hệ thống quickbite nếu chưa tồn tại
if ! id -u quickbite > /dev/null 2>&1; then
  sudo useradd -r -g quickbite -s /bin/false quickbite
fi
