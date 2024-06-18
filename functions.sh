
# install

function install()
{
echo -e "${COLOR_YELLOW}Installing ${COLOR_BLUE}$APP"

#if [[ -x "$(command -v $1)" ]]; then

if dpkg-query -W -f='${Status}' $APP 2>/dev/null | grep -q "install ok installed"; then

    echo -e "${COLOR_YELLOW} --> ${COLOR_BLUE}$APP ${COLOR_YELLOW}already installed${COLOR_NC}"

else

    echo -e "${COLOR_NC} "

    # installing
    if [[ -x "$(command -v nala)" ]]; then

        # using nala if exists
        sudo nala install -y $APP

    else

        # using apt
        sudo apt install -y $APP

    fi

    # skip line
    echo -e " "
    echo -e "${COLOR_YELLOW} --> ${COLOR_BLUE}$APP ${COLOR_YELLOW}installed${COLOR_NC}"

fi

}

function install_flatpak()
{

echo -e "${COLOR_YELLOW}Installing ${COLOR_BLUE}$APPID"

if flatpak info "${APPID}" >/dev/null 2>&1; then

    echo -e "${COLOR_YELLOW} --> ${COLOR_BLUE}$APPID ${COLOR_YELLOW}already installed${COLOR_NC}"

else

    echo -e "${COLOR_NC} "

    flatpak install -u -y flathub $APPID

    # skip line
    echo -e " "
    echo -e "${COLOR_YELLOW} --> ${COLOR_BLUE}$APPID ${COLOR_YELLOW}installed${COLOR_NC}"

fi

}
