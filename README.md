# ?? FiveM Rockstar Unlink Tool

<div align="center">

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![.NET](https://img.shields.io/badge/.NET%20Framework-4.6-purple.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

**Công c? xóa liên k?t tài kho?n Rockstar Games kh?i FiveM**

</div>

---

## ?? Mô T?

FiveM Rockstar Unlink Tool là công c? ??n gi?n giúp b?n xóa liên k?t tài kho?n Rockstar Games kh?i FiveM b?ng cách xóa th? m?c `DigitalEntitlements` trong `%localappdata%`.

## ? Tính N?ng

- ?? **Xóa liên k?t Rockstar** - Xóa folder DigitalEntitlements t? ??ng
- ?? **Giao di?n hi?n ??i** - Dark theme công ngh?, chuyên nghi?p
- ?? **T??ng thích** - Windows 10/11
- ? **Nhanh chóng** - X? lý ch? trong vài giây
- ??? **An toàn** - X? lý l?i ??y ??, thông báo rõ ràng

## ??? Giao Di?n

![Screenshot](https://via.placeholder.com/600x450/0F0F14/00B4FF?text=FiveM+Rockstar+Unlink+Tool)

## ?? T?i V?

T?i phiên b?n m?i nh?t t?i [Releases](../../releases/latest)

## ?? Cách S? D?ng

1. **T?i file** `FiveMRockstarUnlinkTool.exe` t? m?c [Releases](../../releases)
2. **Ch?y ?ng d?ng** (Khuy?n ngh? ch?y v?i quy?n Administrator)
3. **Click nút** "?? XÓA LIÊN K?T ROCKSTAR"
4. **Hoàn t?t** - Thông báo thành công s? hi?n ra

## ?? Yêu C?u H? Th?ng

- **OS:** Windows 10/11
- **.NET Framework:** 4.6 tr? lên
- **RAM:** 50MB
- **Dung l??ng:** 500KB

## ??? Build T? Source

### Yêu C?u
- Visual Studio 2017 tr? lên
- .NET Framework 4.6 SDK

### Các B??c

```bash
# Clone repository
git clone https://github.com/[YOUR-USERNAME]/FiveMRockstarUnlinkTool.git

# M? solution
cd FiveMRockstarUnlinkTool
start FiveMRockstarUnlinkTool.sln

# Build trong Visual Studio
# Build -> Build Solution (Ctrl+Shift+B)
```

File `.exe` s? n?m trong `bin\Release\`

## ?? C? Ch? Ho?t ??ng

1. Truy c?p `%localappdata%` (Environment.SpecialFolder.LocalApplicationData)
2. Tìm folder `DigitalEntitlements`
3. Xóa folder và toàn b? n?i dung
4. Hi?n th? thông báo k?t qu?

## ?? L?u Ý

- ? Khuy?n ngh? ch?y v?i quy?n **Administrator** ?? tránh l?i quy?n truy c?p
- ?? Công c? s? **xóa v?nh vi?n** folder DigitalEntitlements
- ?? Sau khi xóa, b?n có th? liên k?t l?i tài kho?n Rockstar m?i trong FiveM

## ?? ?óng Góp

M?i ?óng góp ??u ???c chào ?ón! Hãy:

1. Fork repository
2. T?o branch cho feature (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. M? Pull Request

## ?? License

D? án này ???c phân ph?i d??i MIT License. Xem file `LICENSE` ?? bi?t thêm chi ti?t.

## ????? Tác Gi?

**Mr. V?** - [@vuvu](https://github.com/vuvu)

## ?? Support

N?u th?y h?u ích, hãy cho repository m?t ?!

---

<div align="center">

**Made with ?? by Mr. V?**

</div>
