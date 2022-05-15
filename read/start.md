---
title: 入門
nav_order: 1
has_children: true
---

# 入門


## 主題

| ISO 檔案下載 |
| --- |
| [Download ISO](https://samwhelp.github.io/note-about-fedora/read/start/download/download_iso.html) |
| [Boot ISO By USB](https://samwhelp.github.io/note-about-fedora/read/start/download/boot_iso_by_usb.html) |
| [Boot ISO By Ventoy](https://samwhelp.github.io/note-about-fedora/read/start/download/boot_iso_by_ventoy.html) |
| [Boot ISO By GRUB](https://samwhelp.github.io/note-about-fedora/read/start/download/boot_iso_by_grub.html) |


## Package Management

* [dnf](https://docs.fedoraproject.org/en-US/fedora/latest/system-administrators-guide/package-management/DNF/)


## dnf search

``` sh
dnf search ibus
```

## dnf repoquery

``` sh
dnf repoquery -h
```

``` sh
dnf help repoquery
```

``` sh
dnf repoquery ibus
```

``` sh
dnf repoquery ibus -i
```

``` sh
dnf repoquery ibus -l
```

## dnf provides

``` sh
dnf provides /etc/X11/xinit/xinput.d/ibus.conf
```

## dnf install

``` sh
sudo dnf install git
```

``` sh
sudo dnf install git -y
```
