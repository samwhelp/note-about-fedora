---
title: fcitx-chewing
nav_order: 3101
has_children: false
parent: fcitx
grand_parent: 中文輸入法
---


# fcitx-chewing

## 微調腳本

* [fcitx-chewing 安裝微調腳本](https://github.com/samwhelp/note-about-fedora/tree/gh-pages/_demo/adjustment/env/im/fcitx-chewing)


## 指令安裝

執行下面指令，安裝相關「Package」

``` sh
sudo dnf install fcitx fcitx-chewing fcitx-configtool fcitx-gtk2 fcitx-gtk3 fcitx-qt4 fcitx-qt5
```

或是執行下面指令，安裝相關「Package」

``` sh
sudo dnf install fcitx fcitx-chewing fcitx-configtool fcitx-gtk2 fcitx-gtk3 fcitx-qt4 fcitx-qt5 -y
```




## 切換輸入法架構

執行

``` sh
imsettings-list
```

顯示

```
- 1: IBus[ibus.conf] (recommended)
  2: X compose table[xcompose.conf] 
  3: FCITX[fcitx.conf] 
```

執行下面指令，切換輸入法架構到「fcitx」

``` sh
imsettings-switch fcitx
```

顯示

```
Switched input method to fcitx
```

> 重新登出，然後登入，就會生效


## ~/.config/imsettings/xinputrc

上面的步驟，會產生一個檔案「~/.config/imsettings/xinputrc」

執行下面指令

``` sh
file ~/.config/imsettings/xinputrc
```

顯示

```
/home/liveuser/.config/imsettings/xinputrc: symbolic link to /etc/X11/xinit/xinput.d/fcitx.conf
```

可以了解到關於「~/.config/imsettings/xinputrc」這個檔案，

是「symbolic link」到「/etc/X11/xinit/xinput.d/fcitx.conf」


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
cat /etc/X11/xinit/xinput.d/fcitx.conf
```

顯示

```
XIM=fcitx
XIM_PROGRAM=/usr/bin/fcitx
ICON="/usr/share/pixmaps/fcitx.png"
XIM_ARGS="-D"
PREFERENCE_PROGRAM=/usr/bin/fcitx-configtool
SHORT_DESC="FCITX"
GTK_IM_MODULE=fcitx
if test -f /usr/lib/qt4/plugins/inputmethods/qtim-fcitx.so || \
   test -f /usr/lib64/qt4/plugins/inputmethods/qtim-fcitx.so || \
   test -f /usr/lib/qt5/plugins/platforminputcontexts/libfcitxplatforminputcontextplugin.so || \
   test -f /usr/lib64/qt5/plugins/platforminputcontexts/libfcitxplatforminputcontextplugin.so;
then
    QT_IM_MODULE=fcitx
else
    QT_IM_MODULE=xim
fi

```



## 環境變數

執行

``` sh
env | grep fcitx
```

顯示

```
GTK_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
QT_IM_MODULE=fcitx
```


## 按鍵綁定

* [spec-keybind-chewing](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/env/im/fcitx-chewing/spec-keybind-chewing.md)
* [spec-keybind](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/env/im/fcitx-chewing/spec-keybind.md)
