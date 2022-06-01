#! /bin/sh
#! /usr/bin/expect
#! /usr/bin/env bash

ip="$(ifdata -pa en0)"
echo "var ip = ${ip};" >| "ip.js"

git add "ip.js"
git commit -m "ip update"
#git remote add origin https://github.com/Froggymine/local_ip_forward.git
git push origin main
#removed -u after push

#expect "username: "
#send -- "thomas@moyle-croft.com"
#expect "password: "
#send -- "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"
