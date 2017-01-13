#!/bin/bash

cd /var/www/html
mkdir coreos
cd coreos
mkdir 1185.5.0
cd 1185.5.0
wget -q https://stable.release.core-os.net/amd64-usr/1185.5.0/coreos_production_image.bin.bz2
wget -q https://stable.release.core-os.net/amd64-usr/1185.5.0/coreos_production_image.bin.bz2.sig

cd /var/lib/tftpboot/
wget -q https://stable.release.core-os.net/amd64-usr/current/coreos_production_pxe.vmlinuz 
wget -q https://stable.release.core-os.net/amd64-usr/current/coreos_production_pxe.vmlinuz.sig 
wget -q https://stable.release.core-os.net/amd64-usr/current/coreos_production_pxe_image.cpio.gz 
wget -q https://stable.release.core-os.net/amd64-usr/current/coreos_production_pxe_image.cpio.gz.sig
chmod -R 777 /var/lib/tftpboot/
