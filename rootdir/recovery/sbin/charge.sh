#!/sbin/sh

# check if in recovery or charge mode
if grep -q androidboot.huawei_type=recoverychg /proc/cmdline ; then
       /sbin/charge
	out
fi

/sbin/recovery


out
