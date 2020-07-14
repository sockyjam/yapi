

if [ ! -x "/init.lock" ]; then
	cd /api/vendors
	npm run install-server
	touch /init.lock
fi

cd /api/vendors
server/app.js
