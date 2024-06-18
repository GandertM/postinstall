# flatpak
APP="flatpak"
install $APP

# Add the Flathub repository
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# KDE backend
APP="plasma-discover-backend-flatpak"
install plasma-discover-backend-flatpak

# Gnome
#sudo apt install -y gnome-software-plugin-flatpak

# test
#echo "$XDG_DATA_DIRS" | grep -Eo 'xfce|kde|gnome'
#echo "$XDG_DATA_DIRS" | sed 's/.*\(xfce\|kde\|gnome\).*/\1/'

#if [ "$XDG_CURRENT_DESKTOP" = "" ]
#then
#  desktop=$(echo "$XDG_DATA_DIRS" | sed 's/.*\(xfce\|kde\|gnome\).*/\1/')
#else
#  desktop=$XDG_CURRENT_DESKTOP
#fi

#desktop=${desktop,,}  # convert to lower case
#echo "$desktop"
