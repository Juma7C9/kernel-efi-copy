# Mantainer: Juma7C9 <me@dividebyzero.it>

pkgname=kernel-efi-copy
pkgver=1
pkgrel=1
pkgdesc="Copy kernel and initramfs images to EFI directory"
arch=("any")
url="none"
license=('GPL')
depends=()
source=("999-$pkgname.hook"
        "$pkgname.sh")
md5sums=('8c6c509f92f1e816006aa76ea42ade3f'
         '6ea094df55b08a0db13a5a3645e30bff')

package() {
	install -Dm 0644 -t $pkgdir/usr/share/libalpm/hooks/ $srcdir/999-$pkgname.hook
	install -Dm 0755 -t $pkgdir/usr/share/libalpm/scripts/ $srcdir/$pkgname.sh
}
