
while true;do echo hello docker;sleep 1000;done  ## debug mode

if [ ! -e "/data/db/init.lock" ]; then
	cd /api/vendors
	npm run install-server
	touch /data/db/init.lock
fi

cd /api/vendors
server/app.js
