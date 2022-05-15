---
title: Download ISO
nav_order: 7010
has_children: false
parent: 下載
grand_parent: 入門
---



# Download ISO


## 下載腳本

* [Fedora 36](https://github.com/samwhelp/note-about-fedora/tree/gh-pages/_demo/download/iso/36)


### iso-download.txt

```
https://download.fedoraproject.org/pub/fedora/linux/releases/36/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-36-1.5.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/36/Spins/x86_64/iso/Fedora-Xfce-Live-x86_64-36-1.5.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/36/Spins/x86_64/iso/Fedora-KDE-Live-x86_64-36-1.5.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/36/Spins/x86_64/iso/Fedora-i3-Live-x86_64-36-1.5.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/36/Spins/x86_64/iso/Fedora-LXQt-Live-x86_64-36-1.5.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/36/Spins/x86_64/iso/Fedora-LXDE-Live-x86_64-36-1.5.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/36/Spins/x86_64/iso/Fedora-SoaS-Live-x86_64-36-1.5.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/36/Spins/x86_64/iso/Fedora-MATE_Compiz-Live-x86_64-36-1.5.iso
https://download.fedoraproject.org/pub/fedora/linux/releases/36/Spins/x86_64/iso/Fedora-Cinnamon-Live-x86_64-36-1.5.iso


https://download.fedoraproject.org/pub/fedora/linux/releases/36/Spins/x86_64/iso/Fedora-Spins-36-1.5-x86_64-CHECKSUM
https://download.fedoraproject.org/pub/fedora/linux/releases/36/Workstation/x86_64/iso/Fedora-Workstation-36-1.5-x86_64-CHECKSUM
```


### iso-download.sh

``` sh
wget -c -i iso-download.txt
```
