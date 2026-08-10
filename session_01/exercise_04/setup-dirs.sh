#!/bin/bash

# Tạo thư mục cho QuickBite
sudo mkdir -p /opt/quickbite/user-service

# Thay đổi owner và group cho toàn bộ thư mục QuickBite
sudo chown -R quickbite:quickbite /opt/quickbite

# Đặt quyền hạn truy cập tập tin
sudo chmod 750 /opt/quickbite

# Ý nghĩa của mã số phân quyền 750
# 7: Chủ sở hữu (owner) có quyền đọc, ghi và thực thi (rwx)
# 5: Nhóm (group) có quyền đọc và thực thi (r-x)
# 0: Người dùng khác (others) không có quyền truy cập (---)