sudo apt-add-repository -y -n 'deb http://archive.ubuntu.com/ubuntu focal main'
sudo apt-add-repository -y 'deb http://archive.ubuntu.com/ubuntu focal universe'
sudo apt-get install -y libsoundio1
sudo apt-add-repository -r -y -n 'deb http://archive.ubuntu.com/ubuntu focal universe'
sudo apt-add-repository -r -y 'deb http://archive.ubuntu.com/ubuntu focal main'

if ! dpkg -s libk4a1.4 > /dev/null; then
	curl -sSL https://packages.microsoft.com/ubuntu/18.04/prod/pool/main/libk/libk4a1.4/libk4a1.4_1.4.1_amd64.deb> /tmp/libk4a1.4_1.4.1_amd64.deb
	sudo dpkg -i /tmp/libk4a1.4_1.4.1_amd64.deb
fi
if ! dpkg -s libk4a1.4-dev > /dev/null; then
	curl -sSL https://packages.microsoft.com/ubuntu/18.04/prod/pool/main/libk/libk4a1.4-dev/libk4a1.4-dev_1.4.1_amd64.deb > /tmp/libk4a1.4-dev_1.4.1_amd64.deb
	sudo dpkg -i /tmp/libk4a1.4-dev_1.4.1_amd64.deb
fi
if ! dpkg -s k4a-tools > /dev/null; then
	curl -sSL https://packages.microsoft.com/ubuntu/18.04/prod/pool/main/k/k4a-tools/k4a-tools_1.4.1_amd64.deb > /tmp/k4a-tools_1.4.1_amd64.deb
	sudo dpkg -i /tmp/k4a-tools_1.4.1_amd64.deb
fi

curl https://raw.githubusercontent.com/microsoft/Azure-Kinect-Sensor-SDK/refs/heads/develop/scripts/99-k4a.rules > 99-k4a.rules
sudo mv 99-k4a.rules /etc/udev/rules.d/

