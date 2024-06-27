#!/bin/sh

SCRIPT_DIR=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
SCRIPT_FILE=${BASH_SOURCE[0]}

# Main list of packages
packages=(
	"xorg-dev"
)

# Function to read common packages from a file
read_packages() {
    local base_file="$1"
    if [ -f "$base_file" ]; then
        packages=( $(< "$base_file") )
    else
        echo "Base packages file not found: $common_file"
        exit 1
    fi
}

# Function to install packages if they are not already installed
install_packages() {
    local pkgs=("$@")
    local missing_pkgs=()

    # Check if each package is installed
    for pkg in "${pkgs[@]}"; do
        if ! dpkg -l | grep -q " $pkg "; then
            missing_pkgs+=("$pkg")
        fi
    done

    # Install missing packages
    if [ ${#missing_pkgs[@]} -gt 0 ]; then
        echo "Installing missing packages: ${missing_pkgs[@]}"
        sudo apt update
        sudo apt install -y "${missing_pkgs[@]}"
        if [ $? -ne 0 ]; then
            echo "Failed to install some packages. Exiting."
            exit 1
        fi
    else
        echo "All required packages are already installed."
    fi
}

# Call function to install file packages
echo '************** Installing File Packages **************'
install_packages "${packages[@]}"

# Read base packages from file
read_packages "$SCRIPT_DIR/base_packages.txt"
# Call function to install base packages
echo '************** Installing Base Packages **************'
install_packages "${packages[@]}"

xdg-user-dirs-update
mkdir ~/Pictures/Screenshots/
# XSessions and dwm.desktop
if [[ ! -d /usr/share/xsessions ]]; then
    sudo mkdir /usr/share/xsessions
fi

cat > ./temp << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=dwm
Comment=Dynamic window manager
Exec=dwm
Icon=dwm
Type=XSession
EOF
sudo cp ./temp /usr/share/xsessions/dwm.desktop;rm ./temp


# Creating directories
mkdir ~/.config/suckless

# Move install directory, make, and install
cd ~/.config/suckless
tools=( "dwm" "st" "slstatus" "dmenu" "slock" )
for tool in ${tools[@]}
do 
	git clone git://git.suckless.org/$tool
	cd ~/.config/suckless/$tool;make;sudo make clean install;cd ..
done


# make sure lightdm is installed
bash $SCRIPT_DIR/lightdm.sh

# Read common packages from file
read_packages "$SCRIPT_DIR/common_packages.txt"
# Call function to install base packages
echo '************** Installing Base Packages **************'
install_packages "${packages[@]}"

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Nerd Fonts
bash $SCRIPT_DIR/nerdfonts.sh

# Nwg Look
bash $SCRIPT_DIR/nwg-look.sh