set -e
sudo apt-get install build-essential
sudo apt install -y zlib1g-dev 
sudo apt install libssl-dev libncurses5-dev libsqlite3-dev libreadline-dev libtk8.6 libgdm-dev libpcap-dev

for PYTHON_VERSION in "3.12.4" ; do
	echo Installing $PYTHON_VERSION
	sudo rm -Rf /opt/python/${PYTHON_VERSION}*
	sudo rm -Rf Python-${PYTHON_VERSION}*
	wget  https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz
	tar -xvzf Python-${PYTHON_VERSION}.tgz
	cd Python-${PYTHON_VERSION}

	./configure \
		--prefix=/opt/python/${PYTHON_VERSION} \
		--enable-shared \
		--enable-optimizations \
		--enable-ipv6 \
		LDFLAGS=-Wl,-rpath=/opt/python/${PYTHON_VERSION}/lib,--disable-new-dtags

	make
	sudo make install
	cd ..
	sudo rm Python-${PYTHON_VERSION}.tgz
	sudo rm -Rf  Python-${PYTHON_VERSION}
done 
