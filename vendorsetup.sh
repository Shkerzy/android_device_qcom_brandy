#!/bin/sh
# Prepare QCOM_CUSTOM stuff
if [ -d "custom/tools" ]; then
	if [ -f "custom/Android.mk" ]; then
		echo > /dev/null
	else
		cp -af custom/tools/Android.mk custom/Android.mk 2> /dev/null
	fi
fi
