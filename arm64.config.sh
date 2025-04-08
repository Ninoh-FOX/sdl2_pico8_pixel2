#============= armhf config for SDL 2.28.1 ==================

# export CC=arm-linux-gnueabihf-gcc
# export CXX=arm-linux-gnueabihf-g++
# export CFLAGS="-marm -mcpu=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=hard -O3"
export PATH=/mnt/ext-data/downloads/buildroot-2025.02/output/host/bin/:$PATH
export CC=aarch64-linux-gcc
export CXX=aarch64-linux-g++
export CFLAGS="-I/mnt/ext-data/downloads/buildroot-2025.02/output/host/aarch64-buildroot-linux-gnu/sysroot/usr/include"
export LDFLAGS="-L/mnt/ext-data/downloads/buildroot-2025.02/output/host/aarch64-buildroot-linux-gnu/sysroot/usr/lib"
make distclean

./configure --prefix=/mnt/ext-data/downloads/buildroot-2025.02/output/host/aarch64-buildroot-linux-gnu/sysroot/usr \
  --host=aarch64-linux \
    --enable-shared --enable-static \
    --enable-assembly \
    --enable-arm-simd \
    --enable-loadso \
    --enable-video-mali \
    --disable-video-opengl \
    --enable-video-opengles2 \
    --enable-video-opengles \
    --disable-video-offscreen \
    --disable-video-vulkan \
    --disable-video-kmsdrm \
    --enable-oss \
    --enable-alsa \
    --disable-sndio \
    --enable-joystick \
    --enable-haptic \
    --enable-pthreads \
    --enable-pthread-sem \
    --disable-video-dummy --disable-arts --disable-esd \
    --disable-hidapi \
    --enable-sensor \
    --disable-power \
	--disable-jack


#    --enable-video-opengl \
# -lEGL -lGLESv2 -lIMGegl -lglslcompiler -lsrv_um -lusc
#   --enable-video-mali \		
#   --enable-video-fbcon \
#   --enable-video-opengles2 \
make -j2
