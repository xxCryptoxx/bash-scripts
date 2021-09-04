# URL TO FILE THAT WILL BE DOWNLOAD
URL="FILE_TO_INSTALL"
# FILE PATH TO INSTALL IN OR TO CHECK IF IT EXISTS
FILE="/usr/bin/FILE_HERE"
# CHANGE THE PERMISSIONS OF FILE TO EXECUTABLE
CHMCMD="chmod +X ${FILE}"

# IF REGULAR FILE ${FILE} EXISTS THEN TELL ME
if [ -f ${FILE} ]; then
    echo "FILENAME installation found in '${FILE}'"
else
    # CHECK IF WGET OR CURL EXISTS
    if [ ! -x "\$(which wget) || \$(which curl)" ]; then
        # DOWNLOAD WITH WGET OR CURL
        DOWNLOADCMD="wget -v ${URL} -O ${FILE}" || DOWNLOADCMD="curl -v -o ${FILE} -sfL ${URL}"
    else
        # IF THEY DONT EXIST OR ARENT FOUND, TELL ME
        echo "Could not find curl or wget."
    fi
    # IF REGULAR FILE SUDO EXISTS THEN SUDO THE DOWNLOAD AND PERMISSIONS
    if [ -f /usr/bin/sudo ]; then
        DLCMD="sudo ${DLCMD}"
        CHMCMD="sudo $CHMOD"
    fi
    $DOWNLOADCMD
    $CHMOD
fi