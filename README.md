## Flag Patch for Xiaomi MIUI China

This is a Magisk module to change MIUI Chinese version to Global version by changing ROM flag.

The look and feel of the settings, etc. will be the global version.

OTA cannot be received during module activation. If you are using the Chinese device where the global version exists, please note that the global version OTA may come and it should not be downloaded.

This module only changes ROM flags, so please install "Patch for Xiaomi MIUI China" to add translations:  
https://github.com/AndroPlus-org/magisk-module-miui-cn2global

## Warning
--- If you want to use flag patch with MIUI optimization turned off (optional) ---
Please note if you disabled MIUI optimization, you'll get duplicate Package Installer (MIUI and AOSP) and it will cause bootloop.
Please don't disable MIUI optimization before installing this module, and disable one of the Package Installer to prevent bootloop.

In v2+, the module automatically deletes AOSP Package Installer if you have MIUI Package Installer and disabled MIUI optimization when you install this module.  
The check is performed only during installation.  

For installing flag patch module safely, you need to do:
1. Enable MIUI optimization and reboot
2. Install lite module and reboot
3. Disable MIUI optimization
4. Two "Package Installer" app will be available so disable one of them (I recommend non-Xiaomi logo one)
5. Reboot
-------------

## Prohibitions

For reasons of support, etc., commercial use of this module is prohibited. (except in cases of special permission).  
(e.g.: Selling or exhibiting device contains this module, selling articles on installation procedures for a fee, etc.)

In case of commercial use, 50% of the profit will be collected.
