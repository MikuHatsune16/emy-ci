# Normal build steps
. build/envsetup.sh
lunch aospa_lavender-user

# export variable here
export TZ=Asia/Kolkata

compile_plox () {
ls /tmp/rom/out/target/product/lavender/system.img || make systemimage -j10
ls /tmp/rom/out/target/product/lavender/system.img && ./rom-build.sh lavender -t user -s keys -j10
ls /tmp/rom/aospa*.zip && mv -f /tmp/rom/aospa*.zip /tmp/rom/out/target/product/lavender
}
