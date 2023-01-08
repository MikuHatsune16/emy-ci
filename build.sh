# Normal build steps
. build/envsetup.sh
lunch superior_lavender-userdebug

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true
export SUPERIOR_GAPPS=minimal

compile_plox () {
mka bacon -j$(nproc --all)
}
