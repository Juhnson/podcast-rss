#!/bin/bash

ALBUMID="12825974"
RSSFILE="PAF4.xml"
export PBUUID="e42d7f6a-5541-44f3-abbe-fc93bf3fac7f"
./ximalaya_linux_amd64 $ALBUMID > $RSSFILE
ls
curl -X PUT -F c=@$RSSFILE https://ptpb.pw/$PBUUID
