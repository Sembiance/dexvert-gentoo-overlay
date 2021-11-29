# dexvert-gentoo-overlay

This is a Gentoo overlay that contains multiple programs and custom code patches used by my [dexvert](https://github.com/Sembiance/dexvert) file format conversion program

## Install

```
mkdir /some/path
cd /some/path
git clone https://github.com/Sembiance/dexvert-gentoo-overlay.git dexvert
echo 'PORTDIR_OVERLAY="/some/path/dexvert"' >> /etc/portage/make.conf
```
