#!/bin/bash
ansible -i hosts.txt all1 -m ping | egrep "UNREACHABLE|SUCCESS" | sort -k 1