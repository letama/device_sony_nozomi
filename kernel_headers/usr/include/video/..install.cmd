cmd_/home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/video/.install := perl scripts/headers_install.pl /home/tama/sony/src/aosp/android_kernel_sony_msm8x60/include/video /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/video arm edid.h sisfb.h uvesafb.h; perl scripts/headers_install.pl /home/tama/sony/src/aosp/android_kernel_sony_msm8x60/include/video /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/video arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/video/$$F; done; touch /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/video/.install
