#!/bin/bash
shopt -s extglob

svn co https://github.com/coolsnowwolf/lede/trunk/target/linux/ipq60xx target/linux/ipq60xx

git clone https://github.com/qosmio/nss-packages package/nss-packages

sed -i 's/DEFAULT_PACKAGES +=/DEFAULT_PACKAGES += kmod-qca-nss-dp kmod-qca-nss-drv kmod-qca-nss-drv-pppoe nss-firmware-ipq6018 qca-nss-ecm/' target/linux/ipq60xx/Makefile
