cmd_/home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/raid/.install := perl scripts/headers_install.pl /home/tama/sony/src/aosp/android_kernel_sony_msm8x60/include/linux/raid /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/raid arm md_p.h md_u.h; perl scripts/headers_install.pl /home/tama/sony/src/aosp/android_kernel_sony_msm8x60/include/linux/raid /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/raid arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/raid/$$F; done; touch /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/raid/.install
