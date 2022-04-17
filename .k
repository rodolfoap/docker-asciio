verify(){
	diff -q app/${1} model/${1} || cp -i app/${1} model/${1}
}
verify server.js
verify index.html
verify package.json
verify .x
git add model

docker-compose down
/usr/bin/sudo /bin/chown -R $(/usr/bin/id -un): .
# git clean -xdf
