# 30_save_pam_conf.sh
# save a copy of the /etc/pam.conf file (if found)
[[ ! -f /etc/pam.conf ]] && return

if [[ ! -f "$VAR_TMP/pam_conf.${DS}" ]]; then
    Log "Saving a copy of /etc/pam.conf file"
    cp /etc/pam.conf "$VAR_TMP/pam_conf.${DS}"
fi
