---
title: Download ISO
nav_order: 1000
has_children: false
parent: ISO
---


# Download ISO






## 下載腳本

* [下載腳本](https://github.com/samwhelp/fedora-adjustment/blob/main/core/iso/boot-iso/boot-iso-by-grub/demo-boot-fedora-40-iso/iso-download.sh)


## 下載點

> 可以到「Fedora / [Workstation](https://getfedora.org/en/workstation/) / [Download](https://getfedora.org/en/workstation/download/)」或「Fedora / [Spins](https://fedoraproject.org/spins/)」，找到相關的下載點。

> 例如：要找「Workstation」可以直接到「[https://download.fedoraproject.org/pub/fedora/linux/releases/40/Workstation/x86_64/iso/](https://download.fedoraproject.org/pub/fedora/linux/releases/40/Workstation/x86_64/iso/)」，

> 例如：要找「Spins」可以直接到「[https://download.fedoraproject.org/pub/fedora/linux/releases/40/Spins/x86_64/iso/](https://download.fedoraproject.org/pub/fedora/linux/releases/40/Spins/x86_64/iso/)」




## 下載方式

### iso-download.txt

先產生一個檔案「iso-download.txt」，內容如下

```
https://download.fedoraproject.org/pub/fedora/linux/releases/40/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-40-1.14.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/40/Spins/x86_64/iso/Fedora-KDE-Live-x86_64-40-1.14.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/40/Spins/x86_64/iso/Fedora-LXQt-Live-x86_64-40-1.14.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/40/Spins/x86_64/iso/Fedora-Xfce-Live-x86_64-40-1.14.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/40/Spins/x86_64/iso/Fedora-Budgie-Live-x86_64-40-1.14.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/40/Spins/x86_64/iso/Fedora-MATE_Compiz-Live-x86_64-40-1.14.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/40/Spins/x86_64/iso/Fedora-Cinnamon-Live-x86_64-40-1.14.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/40/Spins/x86_64/iso/Fedora-LXDE-Live-x86_64-40-1.14.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/40/Spins/x86_64/iso/Fedora-i3-Live-x86_64-40-1.14.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/40/Spins/x86_64/iso/Fedora-Sway-Live-x86_64-40-1.14.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/40/Spins/x86_64/iso/Fedora-SoaS-Live-x86_64-40-1.14.iso



https://download.fedoraproject.org/pub/fedora/linux/releases/40/Spins/x86_64/iso/Fedora-Spins-40-1.14-x86_64-CHECKSUM
https://download.fedoraproject.org/pub/fedora/linux/releases/40/Workstation/x86_64/iso/Fedora-Workstation-40-1.14-x86_64-CHECKSUM
```

### iso-download.sh

接著執行下面的指令，就會下載剛剛「iso-download.txt」裡面所列的檔案

``` sh
wget -c -i iso-download.txt
```

> 關於「-c」指的是續傳

> 關於「-i iso-download.txt」，指的是下載「iso-download.txt」裡面所列的檔案


## Boot ISO

> 簡單「[驗證](#驗證)」過「下載完成的ISO檔案」，接下來可以選擇不同的「[Boot ISO](https://samwhelp.github.io/note-about-fedora/read/core/iso/boot-iso.html)」方式。



## 驗證



## 列表

| Spins | Download |
| --- | --- |
| [Gnome Shell (Workstation)](https://fedoraproject.org/workstation/) | [Download](https://fedoraproject.org/workstation/download) |
| [Kde Plasma](https://fedoraproject.org/spins/kde/) | [Download](https://fedoraproject.org/spins/kde/download) |
| [Lxqt](https://fedoraproject.org/spins/lxqt/) | [Download](https://fedoraproject.org/spins/lxqt/download) |
| [Xfce](https://fedoraproject.org/spins/xfce/) | [Download](https://fedoraproject.org/spins/xfce/download) |
| [Budgie](https://fedoraproject.org/spins/budgie/) | [Download](https://fedoraproject.org/spins/budgie/download) |
| [Mate Compiz](https://fedoraproject.org/spins/mate/) | [Download](https://fedoraproject.org/spins/mate/download) |
| [Cinnamon](https://fedoraproject.org/spins/cinnamon/) | [Download](https://fedoraproject.org/spins/cinnamon/download) |
| [Lxde](https://fedoraproject.org/spins/lxde/) | [Download](https://fedoraproject.org/spins/lxde/download) |
| [I3](https://fedoraproject.org/spins/i3/) | [Download](https://fedoraproject.org/spins/i3/download) |
| [Sway](https://fedoraproject.org/spins/sway/) | [Download](https://fedoraproject.org/spins/sway/download) |
| [Soas](https://fedoraproject.org/spins/soas/) | [Download](https://fedoraproject.org/spins/soas/download) |
