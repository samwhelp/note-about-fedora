---
title: Boot ISO By GRUB
nav_order: 1040
has_children: false
parent: Boot ISO
grand_parent: ISO
---


# Boot ISO By GRUB


## 範例專案

* boot-iso-by-grub / [demo-boot-fedora-39-iso](https://github.com/samwhelp/fedora-adjustment/tree/main/core/iso/boot-iso/boot-iso-by-grub/demo-boot-fedora-39-iso)


## 下載 ISO

先參考「[Download ISO](https://samwhelp.github.io/note-about-fedora/read/core/iso/download-iso.html)」這篇提到的下載方式，下載「Fedora 官方提供最新的ISO檔案」。

將「ISO檔案」放到「/opt/iso/fedora/39/Fedora-Xfce-Live-x86_64-39-1.5.iso」這個路徑。

舉例執行下面指令

``` sh
sudo curl -fLo //opt/iso/fedora/39/Fedora-Xfce-Live-x86_64-39-1.5.iso --create-dirs \
	https://download.fedoraproject.org/pub/fedora/linux/releases/39/Spins/x86_64/iso/Fedora-Xfce-Live-x86_64-39-1.5.iso
```


## 設定範例

> 接著採用下面其中一種方式來設定。

| GRUB Boot ISO 範例 | 設定檔路徑 | 是否需要執行 update-grub |
| --- | --- | --- |
| demo_40_custom | [/etc/grub.d/40_custom](https://github.com/samwhelp/fedora-adjustment/blob/main/core/iso/boot-iso/boot-iso-by-grub/demo-boot-fedora-39-iso/asset/overlay/etc/grub.d/40_custom) | 修改後，需要執行 `sudo update-grub` |
| demo_41_custom | [/boot/grub/custom.cfg](https://github.com/samwhelp/fedora-adjustment/blob/main/core/iso/boot-iso/boot-iso-by-grub/demo-boot-fedora-39-iso/asset/overlay/boot/grub/custom.cfg) | 修改後，**不需要**執行 `sudo update-grub` |

> 關於「`sudo update-grub`」指的是「`sudo grub-mkconfig -o /boot/grub/grub.cfg`」


## GRUB Menu Entry / Boot ISO 樣板 / Fedora

``` sh
menuentry "Fedora 39 ISO / Xfce" --class Fedora {
	set iso_file="/opt/iso/fedora/39/Fedora-Xfce-Live-x86_64-39-1.5.iso"
	search --set=iso_partition --no-floppy --file $iso_file
	probe --set=iso_partition_uuid --fs-uuid $iso_partition
	set img_dev="/dev/disk/by-uuid/$iso_partition_uuid"
	loopback loop ($iso_partition)$iso_file
	set boot_option=""
	#set boot_option="quiet splash"
	linux (loop)/images/pxeboot/vmlinuz iso-scan/filename=$iso_file root=live:CDLABEL=Fedora-Xfce-Live-39-1-5 rd.live.image rhgb $boot_option
	initrd (loop)/images/pxeboot/initrd.img
}

```


## See Also

* Grub 探索筆記 / [GRUB Boot ISO 範例](https://samwhelp.github.io/note-about-grub/read/howto/boot_iso.html)
