#!/bin/sh
# A wrong login is refused and can be retried at once.
set -e
H=http://web:5000
for i in 1 2 3; do curl -fsS -d "username=probe&password=probe$i" "$H/" | grep -q "Invalid Credentials"; done
