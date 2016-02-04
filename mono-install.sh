#!/bin/bash
export PATH=/sbin:/usr/sbin:/bin:/usr/bin

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update
apt-get install mono-complete=`apt-cache show mono-complete|grep ^Version:|grep xamarin|awk '{print $2}'`
mono -V