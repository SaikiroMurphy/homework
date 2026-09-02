Các lỗi trong file:
    1. stages khai báo sai cú pháp YAML: stages phải là một mảng (list). Cần dùng dấu - cho build_app
    2. Không chỉ định Docker image có Java/Gradle: GitLab Runner mặc định có thể không cung cấp sẵn môi trường JDK 17 và Gradle cần thiết để chạy
