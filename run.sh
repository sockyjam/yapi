docker run -d -p 27017:27017 -v $PWD/dbdata:/data/db  --name mongo-yapi mongo


docker run -d \
	  --name yapi \
	    --link mongo-yapi:mongo \
	      --workdir /api/vendors \
	        -p 3001:3000 \
		  registry.cn-hangzhou.aliyuncs.com/anoy/yapi \
		    server/app.js


