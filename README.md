PicoLegacy
==============

The local manifests for building CM12 for HTC Explorer/Pico.

To sync:
-------

    repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0
    curl --create-dirs -L -o .repo/local_manifests/local_manifest.xml -O -L https://raw.githubusercontent.com/Kirmaniarslan/local_manifest/cm-11.0/local_manifest.xml
    repo sync

To Build :
--------

    sh vendor/cm/get-prebuilts
    source build/envsetup.sh
    brunch pico 
