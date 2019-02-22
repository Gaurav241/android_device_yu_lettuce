add_lunch_combo fred_lettuce-userdebug
add_lunch_combo fred_lettuce-eng

# Use legacy WLAN and BT HAL
echo
croot
cd hardware/qcom/wlan
git fetch --all
git checkout fred/f9x-legacy
cd ../bt
git fetch --all
git checkout fred/f9x-legacy
croot
echo

GCC_DIR=prebuilts/gcc/linux-x86/aarch64/aarch64-opt-linux-android
GCC_LINK="https://github.com/krasCGQ/aarch64-linux-android/"

if [ ! -d $GCC_DIR ]; then

  tput bold
  tput setaf 1
  echo -e "\nWARNING: GCC 8.x not present at $GCC_DIR"

  wget -q --spider https://github.com

  if [ $? -eq 0 ]; then
    tput setaf 4
    echo -e "\nInternet connection detected"
    echo -e "\n=======================\nCloning GCC 8.x ....\n=======================\n"
    git clone -b opt-gnu-8.x $GCC_LINK $GCC_DIR
  else
    tput setaf 1
    echo -e "You are not connected to the internet! Cannot clone GCC 8.x toolchain automatically\n"
    echo -e "ERROR: Please clone GCC 8.x from $GCC_LINK (opt-gnu-8.x branch) \nto $GCC_DIR, before continuing build !!\n"
    tput sgr0
    exit 1
  fi

  tput sgr0

fi
