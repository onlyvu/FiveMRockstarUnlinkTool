# 🧹 FiveM Rockstar Unlink Tool

<div align="center">

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![.NET](https://img.shields.io/badge/.NET%20Framework-4.6-purple.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

**Công cụ đăng xuất tài khoản Rockstar Games khỏi FiveM**

</div>

---

## 📌 Mô Tả

**FiveM Rockstar Unlink Tool** là công cụ đơn giản giúp người dùng **đăng xuất tài khoản Rockstar Games hiện đang được lưu trong FiveM**, cho phép đăng nhập lại bằng **tài khoản Rockstar khác**.

Tool hoạt động bằng cách **xóa thư mục `DigitalEntitlements`** trong `%localappdata%`, nơi FiveM lưu thông tin đăng nhập Rockstar Social Club.

---

## ✨ Tính Năng

- 🔓 **Đăng xuất Rockstar** – Xóa cache đăng nhập Rockstar tự động
- 🖥️ **Giao diện hiện đại** – Dark theme gọn gàng, dễ sử dụng
- ⚡ **Nhanh chóng** – Thao tác hoàn tất chỉ trong vài giây
- 🛡️ **An toàn** – Không chỉnh sửa file hệ thống hay FiveM core
- 🪟 **Tương thích** – Windows 10 / Windows 11

---

## 🖼️ Giao Diện

![Screenshot](https://via.placeholder.com/600x450/0F0F14/00B4FF?text=FiveM+Rockstar+Unlink+Tool)

---

## 📥 Tải Về

Tải phiên bản mới nhất tại mục **[Releases](../../releases/latest)**

---

## 🚀 Cách Sử Dụng

1. Tải file `FiveMRockstarUnlinkTool.exe` từ mục **Releases**
2. Chạy ứng dụng (khuyến nghị **Run as Administrator**)
3. Nhấn nút **🧹 XÓA LIÊN KẾT ROCKSTAR**
4. Hoàn tất – Thông báo thành công sẽ hiển thị

---

## 🧩 Yêu Cầu Hệ Thống

- **Hệ điều hành:** Windows 10 / 11  
- **.NET Framework:** 4.6 trở lên  
- **RAM:** ~50MB  
- **Dung lượng:** ~500KB  

---

## 🛠️ Build Từ Source

### Yêu Cầu
- Visual Studio 2017 trở lên
- .NET Framework 4.6 SDK

### Các Bước

```bash
git clone https://github.com/[YOUR-USERNAME]/FiveMRockstarUnlinkTool.git
cd FiveMRockstarUnlinkTool
start FiveMRockstarUnlinkTool.sln
```

Build trong Visual Studio: **Build → Build Solution (Ctrl + Shift + B)**  
File `.exe` sẽ nằm trong `bin\Release\`

---

## ⚙️ Cơ Chế Hoạt Động

1. Truy cập thư mục `%localappdata%`
2. Tìm folder `DigitalEntitlements`
3. Xóa toàn bộ thư mục và nội dung bên trong
4. Hiển thị thông báo kết quả cho người dùng

---

## ⚠️ Lưu Ý

- 🔑 Khuyến nghị chạy bằng **Administrator**
- ❗ Thao tác này **xóa vĩnh viễn** cache đăng nhập Rockstar
- 🔁 FiveM sẽ yêu cầu đăng nhập lại Rockstar Social Club sau khi xóa

---

## 📄 License

Dự án được phát hành theo **MIT License**.  
Xem file `LICENSE` để biết thêm chi tiết.

---

## 👤 Tác Giả

**Mr. Vũ** – [@vuvu](https://github.com/vuvu)

---

<div align="center">

**Made with ❤️ by Mr. Vũ**

</div>
"# FiveMRockstarUnlinkTool" 
"# FiveMRockstarUnlinkTool" 
