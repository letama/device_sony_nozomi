cmd_/home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/dvb/.install := perl scripts/headers_install.pl /home/tama/sony/src/aosp/android_kernel_sony_msm8x60/include/linux/dvb /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/dvb arm audio.h ca.h dmx.h frontend.h net.h osd.h version.h video.h; perl scripts/headers_install.pl /home/tama/sony/src/aosp/android_kernel_sony_msm8x60/include/linux/dvb /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/dvb arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/dvb/$$F; done; touch /home/tama/jb_4.2.1_r1/out/target/product/lt26/obj/KERNEL/usr/include/linux/dvb/.install