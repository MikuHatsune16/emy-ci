# Normal build steps
. build/envsetup.sh
lunch bliss_lavender-userdebug

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true

compile_plox () {
blissify -v lavender -j10
}
