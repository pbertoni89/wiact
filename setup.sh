#!/bin/bash

rv=$(grep -c wiact /etc/hosts)

(( rv < 2 )) && {
	echo "127.0.0.1 wiact.local" | sudo tee -a /etc/hosts
	echo "127.0.0.1 wiki.wiact.local" | sudo tee -a /etc/hosts
}
