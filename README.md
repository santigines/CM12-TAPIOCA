PicoLegacy
==============

The local manifests for building CM12 for HTC Explorer/Pico.

To sync:

    repo init -u git://github.com/CyanogenMod/android.git -b cm-12.0
    curl --create-dirs -L -o .repo/local_manifests/local_manifest.xml -O -L https://raw.githubusercontent.com/Kirmaniarslan/local_manifest/master/local_manifest.xml
    repo sync
    For Patches :-
    place patches.sh file in your directory where u have synced the sources of Rom
    chmod 775 patches.sh
    ./patches.sh
    sh vendor/cm/get-prebuilts
    source build/envsetup.sh
    brunch pico -jx* ( x refers number of threads ur cpu can handle)
