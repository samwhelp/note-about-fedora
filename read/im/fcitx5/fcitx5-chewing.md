---
title: fcitx5-chewing
nav_order: 3111
has_children: false
parent: fcitx5
grand_parent: 中文輸入法
---


# fcitx5-chewing


## 

``` sh
dnf search fcitx5
```

```
Last metadata expiration check: 1:38:37 ago on Sun 15 May 2022 11:29:34 AM EDT.
==================================== Name Exactly Matched: fcitx5 =====================================
fcitx5.i686 : Next generation of fcitx
fcitx5.x86_64 : Next generation of fcitx
=================================== Name & Summary Matched: fcitx5 ====================================
fcitx5-anthy.x86_64 : Anthy Wrapper for Fcitx5
fcitx5-autostart.noarch : This package will make fcitx5 start with your GUI session
fcitx5-chinese-addons.i686 : Chinese related addon for fcitx5
fcitx5-chinese-addons.x86_64 : Chinese related addon for fcitx5
fcitx5-chinese-addons-data.noarch : Data files of fcitx5-chinese-addons
fcitx5-chinese-addons-devel.i686 : Development files for fcitx5-chinese-addons
fcitx5-chinese-addons-devel.x86_64 : Development files for fcitx5-chinese-addons
fcitx5-configtool.i686 : Configuration tools used by fcitx5
fcitx5-configtool.x86_64 : Configuration tools used by fcitx5
fcitx5-data.noarch : Data files of Fcitx5
fcitx5-devel.i686 : Development files for fcitx5
fcitx5-devel.x86_64 : Development files for fcitx5
fcitx5-gtk-devel.i686 : Development files for fcitx5-gtk
fcitx5-gtk-devel.x86_64 : Development files for fcitx5-gtk
fcitx5-gtk2.i686 : fcitx5 gtk module for gtk2
fcitx5-gtk2.x86_64 : fcitx5 gtk module for gtk2
fcitx5-gtk3.x86_64 : fcitx5 gtk module for gtk3
fcitx5-gtk4.x86_64 : fcitx5 gtk module for gtk4
fcitx5-hangul.x86_64 : Hangul Wrapper for Fcitx5
fcitx5-kkc.x86_64 : Libkkc input method support for Fcitx5
fcitx5-libthai.x86_64 : Libthai Wrapper for Fcitx5
fcitx5-lua-devel.i686 : Development files for fcitx5-lua
fcitx5-lua-devel.x86_64 : Development files for fcitx5-lua
fcitx5-m17n.x86_64 : m17n Wrapper for Fcitx5
fcitx5-migrator.i686 : Migration tools for fcitx5
fcitx5-migrator.x86_64 : Migration tools for fcitx5
fcitx5-migrator-devel.i686 : Devel files for fcitx5-migrator
fcitx5-migrator-devel.x86_64 : Devel files for fcitx5-migrator
fcitx5-mozc.x86_64 : A wrapper of mozc for fcitx5
fcitx5-qt.i686 : Qt library and IM module for fcitx5
fcitx5-qt.x86_64 : Qt library and IM module for fcitx5
fcitx5-qt-devel.i686 : Development files for fcitx5-qt
fcitx5-qt-devel.x86_64 : Development files for fcitx5-qt
fcitx5-qt-libfcitx5qt5widgets.i686 : Provide libFcitx5Qt5WidgetsAddons for fcitx5
fcitx5-qt-libfcitx5qt5widgets.x86_64 : Provide libFcitx5Qt5WidgetsAddons for fcitx5
fcitx5-qt-libfcitx5qtdbus.i686 : Provides libFcitx5Qt5DBusAddons for fcitx5
fcitx5-qt-libfcitx5qtdbus.x86_64 : Provides libFcitx5Qt5DBusAddons for fcitx5
fcitx5-qt-module.i686 : Provides seperately modules for fcitx5-qt
fcitx5-qt-module.x86_64 : Provides seperately modules for fcitx5-qt
fcitx5-qt6.i686 : Qt 6 support for fcitx5
fcitx5-qt6.x86_64 : Qt 6 support for fcitx5
fcitx5-sayura.x86_64 : Sinhala Transe IME engine for Fcitx5
fcitx5-skk.x86_64 : Japanese SKK (Simple Kana Kanji) Engine for Fcitx5
fcitx5-table-extra.noarch : Extra tables for Fcitx5
fcitx5-table-other.noarch : Other tables for Fcitx5
fcitx5-unikey.x86_64 : Unikey support for Fcitx5
fcitx5-zhuyin-data.noarch : Data files for fcitx5-zhuyin
======================================== Name Matched: fcitx5 =========================================
fcitx5-chewing.x86_64 : Chewing Wrapper for Fcitx
fcitx5-gtk.i686 : Gtk im module and glib based dbus client library
fcitx5-gtk.x86_64 : Gtk im module and glib based dbus client library
fcitx5-lua.i686 : Lua support for fcitx
fcitx5-lua.x86_64 : Lua support for fcitx
fcitx5-rime.x86_64 : RIME support for Fcitx
fcitx5-zhuyin.x86_64 : Libzhuyin Wrapper for Fcitx
kcm-fcitx5.i686 : Config tools to be used on KDE based environment.
kcm-fcitx5.x86_64 : Config tools to be used on KDE based environment.
```


## 指令安裝

執行下面指令，安裝相關「Package」

``` sh
sudo dnf install fcitx5 fcitx5-chewing fcitx5-configtool fcitx5-gtk2 fcitx5-gtk3 fcitx5-gtk4 fcitx5-qt fcitx5-qt6
```

或是執行下面指令，安裝相關「Package」

``` sh
sudo dnf install fcitx5 fcitx5-chewing fcitx5-configtool fcitx5-gtk2 fcitx5-gtk3 fcitx5-gtk4 fcitx5-qt fcitx5-qt6 -y
```




## 切換輸入法架構

執行

``` sh
imsettings-list
```

顯示

```
* 1: IBus[ibus.conf] (recommended)
  2: X compose table[xcompose.conf] 
  3: fcitx5[fcitx5.conf] 
  4: FCITX[fcitx.conf] 
```

執行下面指令，切換輸入法架構到「fcitx5」

``` sh
imsettings-switch fcitx5
```

顯示

```
Switched input method to fcitx5
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
/home/liveuser/.config/imsettings/xinputrc: symbolic link to /etc/X11/xinit/xinput.d/fcitx5.conf
```

可以了解到關於「~/.config/imsettings/xinputrc」這個檔案，

是「symbolic link」到「/etc/X11/xinit/xinput.d/fcitx5.conf」


執行

``` sh
ls /etc/X11/xinit/xinput.d/ -1
```

顯示

```
fcitx5.conf
fcitx.conf
ibus.conf
none.conf
xcompose.conf
xim.conf
```

執行

```
cat /etc/X11/xinit/xinput.d/fcitx5.conf
```

顯示

```
XIM=fcitx5
XIM_PROGRAM=/usr/bin/fcitx5
ICON="fcitx5"
XIM_ARGS="-D"
PREFERENCE_PROGRAM=/usr/bin/fcitx5-configtool
SHORT_DESC="fcitx5"
GTK_IM_MODULE=fcitx
if test -f /usr/lib/qt4/plugins/inputmethods/qtim-fcitx5.so || \
   test -f /usr/lib64/qt4/plugins/inputmethods/qtim-fcitx5.so || \
   test -f /usr/lib/qt5/plugins/platforminputcontexts/libfcitx5platforminputcontextplugin.so || \
   test -f /usr/lib64/qt5/plugins/platforminputcontexts/libfcitx5platforminputcontextplugin.so;
then
    QT_IM_MODULE=fcitx
else
    QT_IM_MODULE=xim
fi

# workaround for gnome users
if [ "$XDG_SESSION_DESKTOP" = "gnome"  ]; then
    /usr/bin/systemd-run --user --unit=$XIM $XIM_PROGRAM $XIM_ARGS
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
XMODIFIERS=@im=fcitx5
IMSETTINGS_MODULE=fcitx5
QT_IM_MODULE=fcitx
```



