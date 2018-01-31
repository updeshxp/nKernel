#!/bin/bash
clear
S_VERSION=v1
S_DATE=$(date +%Y%m%d)
S_TOOLCHAIN=/home/updeshsr/UberTC/bin/arm-eabi-
echo "------------------------------------------"
echo "Serenity Kernel $S_VERSION Build Script"
echo "------------------------------------------"
PS3='Please select the kernel variant you want to build (1-4): '
options=("j53g" "j5lte" "j5nlte" "j5ylte" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "j53g")
            clear
            echo "------------------------------------------"
            echo "Building kernel for j53g..."
            echo "------------------------------------------"
            echo " "
            S_VARIANT=j53g
            export ARCH=arm
            export CROSS_COMPILE=$S_TOOLCHAIN
            export LOCALVERSION=-Serenity_Kernel-$S_VERSION-$S_VARIANT-$S_DATE
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output serenity_msm8916_defconfig VARIANT_DEFCONFIG=serenity_msm8916_j53g_defconfig SELINUX_DEFCONFIG=serenity_selinux_defconfig
            make -C $(pwd) O=output
            mv $(pwd)/output/arch/arm/boot/zImage $(pwd)/serenity/ramdisk/$S_VARIANT/split_img/boot.img-zImage
            $(pwd)/tools/dtbTool -o $(pwd)/serenity/dtb.img $(pwd)/output/arch/arm/boot/dts/
            mv $(pwd)/serenity/dtb.img $(pwd)/serenity/ramdisk/$S_VARIANT/split_img/boot.img-dtb
            $(pwd)/serenity/ramdisk/$S_VARIANT/repackimg.sh
            mv $(pwd)/serenity/ramdisk/$S_VARIANT/ramdisk-new.cpio.gz $(pwd)/serenity/ramdisk/$S_VARIANT/split_img/boot.img-ramdisk.cpio.gz
            mv $(pwd)/serenity/ramdisk/$S_VARIANT/image-new.img $(pwd)/serenity/build/boot-$S_VARIANT-$S_DATE.img
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into serenity/build."
            echo "Press any key for end the script."
            echo "------------------------------------------"
            read -n1 -r key
            break
            ;;
        "j5lte")
            clear
            echo "------------------------------------------"
            echo "Building kernel for j5lte..."
            echo "------------------------------------------"
            echo " "
            S_VARIANT=j5lte
            export ARCH=arm
            export CROSS_COMPILE=$S_TOOLCHAIN
            export LOCALVERSION=-Serenity_Kernel-$S_VERSION-$S_VARIANT-$S_DATE
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output serenity_msm8916_defconfig VARIANT_DEFCONFIG=serenity_msm8916_j5lte_defconfig SELINUX_DEFCONFIG=serenity_selinux_defconfig
            make -C $(pwd) O=output
            mv $(pwd)/output/arch/arm/boot/zImage $(pwd)/serenity/ramdisk/$S_VARIANT/split_img/boot.img-zImage
            $(pwd)/tools/dtbTool -o $(pwd)/serenity/dtb.img $(pwd)/output/arch/arm/boot/dts/
            mv $(pwd)/serenity/dtb.img $(pwd)/serenity/ramdisk/$S_VARIANT/split_img/boot.img-dtb
            $(pwd)/serenity/ramdisk/$S_VARIANT/repackimg.sh
            mv $(pwd)/serenity/ramdisk/$S_VARIANT/ramdisk-new.cpio.gz $(pwd)/serenity/ramdisk/$S_VARIANT/split_img/boot.img-ramdisk.cpio.gz
            mv $(pwd)/serenity/ramdisk/$S_VARIANT/image-new.img $(pwd)/serenity/build/boot-$S_VARIANT-$S_DATE.img
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into serenity/build."
            echo "Press any key for end the script."
            echo "------------------------------------------"
            read -n1 -r key
            break
            ;;
        "j5nlte")
            clear
            echo "------------------------------------------"
            echo "Building kernel for j5nlte..."
            echo "------------------------------------------"
            echo " "
            S_VARIANT=j5nlte
            export ARCH=arm
            export CROSS_COMPILE=$S_TOOLCHAIN
            export LOCALVERSION=-Serenity_Kernel-$S_VERSION-$S_VARIANT-$S_DATE
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output serenity_msm8916_defconfig VARIANT_DEFCONFIG=serenity_msm8916_j5nlte_defconfig SELINUX_DEFCONFIG=serenity_selinux_defconfig
            make -C $(pwd) O=output
            mv $(pwd)/output/arch/arm/boot/zImage $(pwd)/serenity/ramdisk/$S_VARIANT/split_img/boot.img-zImage
            $(pwd)/tools/dtbTool -o $(pwd)/serenity/dtb.img $(pwd)/output/arch/arm/boot/dts/
            mv $(pwd)/serenity/dtb.img $(pwd)/serenity/ramdisk/$S_VARIANT/split_img/boot.img-dtb
            $(pwd)/serenity/ramdisk/$S_VARIANT/repackimg.sh
            mv $(pwd)/serenity/ramdisk/$S_VARIANT/ramdisk-new.cpio.gz $(pwd)/serenity/ramdisk/$S_VARIANT/split_img/boot.img-ramdisk.cpio.gz
            mv $(pwd)/serenity/ramdisk/$S_VARIANT/image-new.img $(pwd)/serenity/build/boot-$S_VARIANT-$S_DATE.img
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into serenity/build."
            echo "Press any key for end the script."
            echo "------------------------------------------"
            read -n1 -r key
            break
            ;;
        "j5ylte")
            clear
            echo "------------------------------------------"
            echo "Building kernel for j5ylte..."
            echo "------------------------------------------"
            echo " "
            S_VARIANT=j5ylte
            export ARCH=arm
            export CROSS_COMPILE=$S_TOOLCHAIN
            export LOCALVERSION=-Serenity_Kernel-$S_VERSION-$S_VARIANT-$S_DATE
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output serenity_msm8916_defconfig VARIANT_DEFCONFIG=serenity_msm8916_j5ylte_defconfig SELINUX_DEFCONFIG=serenity_selinux_defconfig
            make -C $(pwd) O=output
            mv $(pwd)/output/arch/arm/boot/zImage $(pwd)/serenity/ramdisk/$S_VARIANT/split_img/boot.img-zImage
            $(pwd)/tools/dtbTool -o $(pwd)/serenity/dtb.img $(pwd)/output/arch/arm/boot/dts/
            mv $(pwd)/serenity/dtb.img $(pwd)/serenity/ramdisk/$S_VARIANT/split_img/boot.img-dtb
            $(pwd)/serenity/ramdisk/$S_VARIANT/repackimg.sh
            mv $(pwd)/serenity/ramdisk/$S_VARIANT/ramdisk-new.cpio.gz $(pwd)/serenity/ramdisk/$S_VARIANT/split_img/boot.img-ramdisk.cpio.gz
            mv $(pwd)/serenity/ramdisk/$S_VARIANT/image-new.img $(pwd)/serenity/build/boot-$S_VARIANT-$S_DATE.img
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into serenity/build."
            echo "Press any key for end the script."
            echo "------------------------------------------"
            read -n1 -r key
            break
            ;;
        "Exit")
            break
            ;;
        *) echo Invalid option.;;
    esac
done
