cmd_/home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/byteorder/.install := perl scripts/headers_install.pl /home/tama/sony/src/aosp/android_kernel_sony_msm8x60/include/linux/byteorder /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/byteorder arm big_endian.h little_endian.h; perl scripts/headers_install.pl /home/tama/sony/src/aosp/android_kernel_sony_msm8x60/include/linux/byteorder /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/byteorder arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/byteorder/$$F; done; touch /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/byteorder/.install
