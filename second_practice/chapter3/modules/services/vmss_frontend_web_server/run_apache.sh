#!/bin/bash
cat > index.html <<EOF
<h1>Ben Test </h1>
<p>DB address: sdfsdfsdffds</p>
<p>DB port: 1433</p>
EOF

nohup busybox httpd -f -p 80 &