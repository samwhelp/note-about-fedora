---
title: Download ISO
nav_order: 1000
has_children: false
parent: ISO
---


# Download ISO






## 下載腳本

* [下載腳本](https://github.com/samwhelp/fedora-adjustment/blob/main/core/iso/boot-iso/boot-iso-by-grub/demo-boot-fedora-42-iso/iso-download.sh)


## 下載點

> 可以到「Fedora / [Workstation](https://getfedora.org/en/workstation/) / [Download](https://getfedora.org/en/workstation/download/)」或「Fedora / [Spins](https://fedoraproject.org/spins/)」，找到相關的下載點。

> 例如：要找「Workstation」可以直接到「[https://download.fedoraproject.org/pub/fedora/linux/releases/42/Workstation/x86_64/iso/](https://download.fedoraproject.org/pub/fedora/linux/releases/42/Workstation/x86_64/iso/)」，

> 例如：要找「KDE」可以直接到「[https://download.fedoraproject.org/pub/fedora/linux/releases/42/KDE/x86_64/iso/](https://download.fedoraproject.org/pub/fedora/linux/releases/42/KDE/x86_64/iso/)」，

> 例如：要找「Spins」可以直接到「[https://download.fedoraproject.org/pub/fedora/linux/releases/42/Spins/x86_64/iso/](https://download.fedoraproject.org/pub/fedora/linux/releases/42/Spins/x86_64/iso/)」




## 下載方式

### iso-download.txt

先產生一個檔案「iso-download.txt」，內容如下

```
https://download.fedoraproject.org/pub/fedora/linux/releases/42/Workstation/x86_64/iso/Fedora-Workstation-Live-42-1.1.x86_64.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/42/KDE/x86_64/iso/Fedora-KDE-Desktop-Live-42-1.1.x86_64.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/42/Spins/x86_64/iso/Fedora-Xfce-Live-42-1.1.x86_64.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/42/Spins/x86_64/iso/Fedora-LXQt-Live-42-1.1.x86_64.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/42/Spins/x86_64/iso/Fedora-LXDE-Live-42-1.1.x86_64.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/42/Spins/x86_64/iso/Fedora-Budgie-Live-42-1.1.x86_64.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/42/Spins/x86_64/iso/Fedora-MATE_Compiz-Live-42-1.1.x86_64.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/42/Spins/x86_64/iso/Fedora-Cinnamon-Live-42-1.1.x86_64.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/42/Spins/x86_64/iso/Fedora-COSMIC-Live-42-1.1.x86_64.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/42/Spins/x86_64/iso/Fedora-i3-Live-42-1.1.x86_64.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/42/Spins/x86_64/iso/Fedora-Sway-Live-42-1.1.x86_64.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/42/Spins/x86_64/iso/Fedora-MiracleWM-Live-42-1.1.x86_64.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/42/Spins/x86_64/iso/Fedora-SoaS-Live-42-1.1.x86_64.iso




https://download.fedoraproject.org/pub/fedora/linux/releases/42/Workstation/x86_64/iso/Fedora-Workstation-42-1.1-x86_64-CHECKSUM
https://download.fedoraproject.org/pub/fedora/linux/releases/42/KDE/x86_64/iso/Fedora-KDE-42-1.1-x86_64-CHECKSUM
https://download.fedoraproject.org/pub/fedora/linux/releases/42/Spins/x86_64/iso/Fedora-Spins-42-1.1-x86_64-CHECKSUM
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
| [Kde Plasma](https://fedoraproject.org/kde/) | [Download](https://fedoraproject.org/kde/download) |
| [Xfce](https://fedoraproject.org/spins/xfce/) | [Download](https://fedoraproject.org/spins/xfce/download) |
| [Lxqt](https://fedoraproject.org/spins/lxqt/) | [Download](https://fedoraproject.org/spins/lxqt/download) |
| [Lxde](https://fedoraproject.org/spins/lxde/) | [Download](https://fedoraproject.org/spins/lxde/download) |
| [Budgie](https://fedoraproject.org/spins/budgie/) | [Download](https://fedoraproject.org/spins/budgie/download) |
| [Mate Compiz](https://fedoraproject.org/spins/mate/) | [Download](https://fedoraproject.org/spins/mate/download) |
| [Cinnamon](https://fedoraproject.org/spins/cinnamon/) | [Download](https://fedoraproject.org/spins/cinnamon/download) |
| [Cosmic](https://fedoraproject.org/spins/cosmic/) | [Download](https://fedoraproject.org/spins/cosmic/download) |
| [I3](https://fedoraproject.org/spins/i3/) | [Download](https://fedoraproject.org/spins/i3/download) |
| [Sway](https://fedoraproject.org/spins/sway/) | [Download](https://fedoraproject.org/spins/sway/download) |
| [Miracle](https://fedoraproject.org/spins/miraclewm/) | [Download](https://fedoraproject.org/spins/miraclewm/download) |
| [Soas](https://fedoraproject.org/spins/soas/) | [Download](https://fedoraproject.org/spins/soas/download) |
