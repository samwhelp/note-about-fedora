---
title: 入門
nav_order: 1
has_children: true
---

# 入門



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
