CONFIG_FILE="openfortivpn.conf"
CONFIG_DEST="/etc"

PLIST_FILE="mlu.guru.VPN.plist"
PLIST_DEST="/Library/LaunchAgents"

install:
	mv "${CONFIG_FILE}" "${CONFIG_DEST}/${CONFIG_FILE}"
	mv "${PLIST_FILE}" "${PLIST_DEST}/${PLIST_FILE}"
	launchctl load -w "${PLIST_DEST}/${PLIST_FILE}"

uninstall:
	launchctl unload "${PLIST_DEST}/${PLIST_FILE}"
	rm -f "${PLIST_DEST}/${PLIST_FILE}"
	rm -f "${CONFIG_DEST}/${CONFIG_FILE}"
