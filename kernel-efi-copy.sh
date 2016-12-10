#!/bin/sh
#
# Copy kernel and initramfs images to EFI directory
#

BOOT="/boot"
EFI="$BOOT/efi/EFI/arch"

for file in `ls "$BOOT"/vmlinuz*`
do
	cp -v "$file" "$EFI"/$(basename "$file").efi
	if [ $? != 0 ]; then exit 1; fi
done

for file in `ls "$BOOT"/initramfs*`
do
	cp -v "$file" "$EFI"/$(basename "$file")
	if [ $? != 0 ]; then exit 1; fi
done

exit 0
