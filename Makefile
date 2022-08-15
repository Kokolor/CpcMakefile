losetup:
	sudo losetup -fP --show Mosaic.qcow2

mount:
	sudo mount /dev/loop12p1 Mount/

umount:
	umount Mount/

code:
	sudo code Mount/CPCDOS --user-data-dir=~/root~

run:
	qemu-system-i386 -m 4096M -enable-kvm -hda Mosaic.qcow2