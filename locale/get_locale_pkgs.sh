#!/bin/bash

# set VERSION
eval $(grep '^\s*VERSION=' libreoffice-l10n.SlackBuild)

arch=${arch:-x86_64}
HWarch=$([ $arch = x86_64 ] && echo "x86_64" || echo "x86")

URL=http://download.documentfoundation.org/libreoffice/stable/$VERSION/rpm/$HWarch/

pkgdir=langpacks

rm -rf $pkgdir

mkdir $pkgdir
cd $pkgdir
wget -r -l1 -nd -A '*_langpack_*.tar.gz' "$URL"
