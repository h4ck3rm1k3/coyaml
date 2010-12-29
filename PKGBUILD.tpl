# Maintainer: Paul Colomiets <pc@gafol.net>

pkgname=coyaml
pkgver=${VERSION}
pkgrel=1
pkgdesc="A configuration file parser generator"
arch=('i686' 'x86_64')
url="http://github.com/tailhook/coyaml"
license=('GPL')
depends=('libyaml')
makedepends=('python3')
source=(https://github.com/downloads/tailhook/coyaml/$pkgname-$pkgver.tar.bz2)
md5sums=('${DIST_MD5}')

build() {
  cd $srcdir/$pkgname-$pkgver
  ./waf configure --prefix=/usr
  ./waf build
  ./waf install --destdir=$pkgdir
}
