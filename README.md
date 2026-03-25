# AnyKernel3 for Kali NetHunter (Miatoll)

This repository is a customized fork of [AnyKernel3](https://github.com/osm0sis/AnyKernel3), specifically configured to package the custom Kali NetHunter kernel for the Xiaomi Miatoll device family. 

## Submodule Usage
This repository is designed to be used as a submodule within the main Miatoll NetHunter kernel source.

> [!NOTE]  
> **Main Repository:** [petros402/android_kernel_xiaomi_sm6250](https://github.com/petros402/android_kernel_xiaomi_sm6250)

When compiling the kernel from the main repository using the `kali-nethunter-kernel-builder`, the build script automatically copies the newly compiled `Image.gz`, `dtb` files, and custom out-of-tree Wi-Fi modules (`8188eu.ko`, `88XXau.ko`) into this directory. It then uses this structure to generate the final `anykernel-NetHunter.zip` flashable file.

## Device Compatibility (Miatoll Family)
* Redmi Note 9 Pro (`joyeuse`)
* Redmi Note 9S (`curtana`)
* Redmi Note 9 Pro Max (`excalibur`)
* POCO M2 Pro (`gram`)

## OS Compatibility
* **Target ROM:** LineageOS 22.2 (Android 15)
* **Modifications:**
  * Disabled legacy AnyKernel ramdisk edits (like `init.rc` modifications) to prevent bootloops on modern Android 15 file-based encryption (FBEv2).
  * Configured to install custom wireless kernel modules into `/data/adb/modules/ak3-helper/system_root/lib/modules/` for NetHunter app toggling.

## Credits
* [osm0sis](https://github.com/osm0sis/AnyKernel3) for the original AnyKernel3 template and core logic.
* See the [Main Repository](https://github.com/petros402/android_kernel_xiaomi_sm6250) for full kernel and driver credits.
