#!/bin/bash

echo "Failed Logins:"
grep "Failed password" /var/log/auth.log | wc -l

echo "Top IPs:"
grep "Failed password" /var/log/auth.log | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr | head
