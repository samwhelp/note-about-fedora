---
title: ibus-chewing
nav_order: 3201
has_children: false
parent: ibus
grand_parent: 中文輸入法
---


# ibus-chewing


## switch-input-source

在「gnome-shell」內建有整合「ibus」，

請參考「[switch-input-source](https://samwhelp.github.io/note-about-ubuntu/read/flavours/workstation/adjustment/switch-input-source.html)」這篇的說明。


> 以下是在其他桌面環境的操作。

## 指令安裝

``` sh
sudo dnf install ibus ibus-chewing ibus-gtk2 ibus-gtk3 ibus-gtk4 ibus-qt
```


## 切換輸入法架構

執行下面指令，切換輸入法架構到「ibus」

``` sh
imsettings-switch ibus
```

```
Switched input method to ibus
```

重新登出，然後登入，就會生效


## ~/.config/imsettings/xinputrc

上面的步驟，會產生一個檔案「~/.config/imsettings/xinputrc」

執行下面指令

``` sh
file ~/.config/imsettings/xinputrc
```

顯示

```
/home/liveuser/.config/imsettings/xinputrc: symbolic link to /etc/X11/xinit/xinput.d/ibus.conf
```

可以了解到關於「~/.config/imsettings/xinputrc」這個檔案，

是「symbolic link」到「/etc/X11/xinit/xinput.d/ibus.conf」


執行

``` sh
ls /etc/X11/xinit/xinput.d/ -1
```

顯示

```
fcitx.conf
ibus.conf
none.conf
xcompose.conf
xim.conf
```

執行

```
cat /etc/X11/xinit/xinput.d/ibus.conf
```

顯示

```
XIM=ibus
XIM_PROGRAM="/usr/bin/ibus-daemon"
ICON="ibus"
XIM_ARGS="-r --xim"
PREFERENCE_PROGRAM=/usr/bin/ibus-setup
SHORT_DESC="IBus"
GTK_IM_MODULE=ibus
NOT_RUN=gnome3

if test -f /usr/lib64/qt5/plugins/platforminputcontexts/libibusplatforminputcontextplugin.so || \
   test -f /usr/lib/qt5/plugins/platforminputcontexts/libibusplatforminputcontextplugin.so || \
   test -f /usr/lib64/qt4/plugins/inputmethods/libqtim-ibus.so || \
   test -f /usr/lib/qt4/plugins/inputmethods/libqtim-ibus.so;
then
    QT_IM_MODULE=ibus
else
    QT_IM_MODULE=xim
fi
```

## 環境變數

執行

``` sh
env | grep ibus
```

顯示

```
GTK_IM_MODULE=ibus
XMODIFIERS=@im=ibus
QT_IM_MODULE=ibus
```


## gsettings


``` sh
gsettings list-recursively | grep org.freedesktop.ibus | sort
```



## 可用輸入法清單

也可以透過「下指令」的方式，，來加入「慣用的中文輸入法」。

執行下面指令，就可以設定「可用輸入法清單」。

``` sh
gsettings set org.freedesktop.ibus.general preload-engines "['xkb:us::eng', 'chewing']"
```


``` sh
gsettings set org.freedesktop.ibus.general preload-engines "['xkb:us::eng', 'libzhuyin']"
```

``` sh
gsettings set org.freedesktop.ibus.general preload-engines "['xkb:us::eng', 'chewing', 'libzhuyin']"
```

## 更改切換按鍵

預設只要按下「`Win + Space`」，

就可以切換「英文輸入法」和「中文輸入法」。

因為我還是習慣使用「`Ctrl + Space`」切換「英文輸入法」和「中文輸入法」。

所以執行下面指令，來更改「切換按鍵」

``` sh
gsettings set org.freedesktop.ibus.general.hotkey triggers "['<Control>space']"
```
