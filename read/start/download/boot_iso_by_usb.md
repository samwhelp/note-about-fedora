---
title: Boot ISO By USB
nav_order: 7020
has_children: false
parent: 下載
grand_parent: 入門
---


# Boot ISO By USB

## 操作步驟

先在「Fedora / [Workstation](https://getfedora.org/en/workstation/) / [Download](https://getfedora.org/en/workstation/download/)」或「Fedora / [Spins](https://spins.fedoraproject.org/)」，

找到「[最新的ISO檔案下載網址](https://getfedora.org/en/workstation/download/)」，

假設下載「[Fedora-Workstation-Live-x86_64-36-1.5.iso](https://download.fedoraproject.org/pub/fedora/linux/releases/36/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-36-1.5.iso)」

先執行下面指令，找到「USB隨身碟」的「Device代號」

``` sh
lsblk
```

假設是「/dev/sdb」

接著執行下面指令，就會寫入「USB隨身碟」。

``` sh
sudo dd if=./Fedora-Workstation-Live-x86_64-36-1.5.iso of=/dev/sdb bs=4M status=progress && sync
```

接著重新開機，在「BIOS」選擇使用「該USB隨身碟」開機。
