#! /bin/bash
# Configure the GUI RPC
echo ${BOINC_GUI_RPC_PASSWORD} > /var/lib/boinc/gui_rpc_auth.cfg
echo ${BOINC_REMOTE_HOST} > /var/lib/boinc/remote_hosts.cfg

exec /usr/bin/boinc ${BOINC_CMD_LINE_OPTIONS}
