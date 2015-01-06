CM12 TAPIOCA
==============

The local manifests for building CM12 for Sony Xperia Tipo.

To sync:
-------

    repo init -u git://github.com/CyanogenMod/android.git -b cm-12.0
    curl --create-dirs -L -o .repo/local_manifests/local_manifest.xml -O -L https://raw.githubusercontent.com/santigines/CM12-TAPIOCA/blob/cm-12.0/local_manifest.xml
    repo sync
    
Applying Patches :
----------------
place patches.sh file in your directory where u have synced the sources of Rom

    chmod 775 patches.sh
    ./patches.sh

To Build :
--------

    sh vendor/cm/get-prebuilts
    source build/envsetup.sh
    brunch tapioca 
