### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers
## Modified for Kali NetHunter (Miatoll Family)

### AnyKernel setup
# global properties
properties() { '
kernel.string=Kali NetHunter Kernel for Miatoll (SM6250)
do.devicecheck=1
do.modules=1
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=miatoll
device.name2=curtana
device.name3=joyeuse
device.name4=excalibur
device.name5=gram
supported.versions=11.0-15.0
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install
## boot files attributes
boot_attributes() {
set_perm_recursive 0 0 755 644 $RAMDISK/*;
set_perm_recursive 0 0 750 750 $RAMDISK/init* $RAMDISK/sbin;
} # end attributes

# boot shell variables
BLOCK=/dev/block/bootdevice/by-name/boot;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=1;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
dump_boot; # Unpack the boot image

# -----------------------------------------------------------------------------
# RAMDISK CHANGES
# (Intentionally left blank for LineageOS 22.2 / Android 15 compatibility)
# -----------------------------------------------------------------------------

write_boot; # Repack and flash the boot image
## end boot install
