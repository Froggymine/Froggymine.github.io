#! /bin/sh
#! /usr/bin/expect

ip="$(ifdata -pa en0)"
echo "var ip = ${ip};" >| "ip.js"

git add "ip.js"
git commit -m "ip update"
#git remote add origin https://github.com/Froggymine/local_ip_forward.git
git push -u origin main

#expect "username: "
#send -- "thomas@moyle-croft.com"
#expect "password: "
#send -- "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"
