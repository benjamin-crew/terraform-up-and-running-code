#!/bin/bash
cat > index.html <<EOF
<h1>Ben Test </h1>
<p>DB address: ${db_address}</p>
<p>DB port: 3306</p>
EOF

nohup busybox httpd -f -p ${server_port} &