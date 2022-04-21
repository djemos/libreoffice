#!/bin/bash

# set VERSION
eval $(grep '^\s*VERSION=' libreoffice-help.SlackBuild)

arch=${arch:-x86_64}
HWarch=$([ $arch = x86_64 ] && echo "x86_64" || echo "x86")

#URL=https://download.documentfoundation.org/libreoffice/stable/$VERSION/rpm/$HWarch/
#URL=http://mirror.catn.com/pub/tdf/libreoffice/stable/$VERSION/rpm/$HWarch/
URL=http://ftp.osuosl.org/pub/tdf/libreoffice/stable/$VERSION/rpm/$HWarch/

pkgdir=helppacks

rm -rf $pkgdir

mkdir $pkgdir
cd $pkgdir
wget -r -l1 -nd -A '*_helppack_*.tar.gz' "$URL"
