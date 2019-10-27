sudo apt-get update

# download depencencies for building python 3.6
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev
sudo apt-get install -y libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm
sudo apt-get install -y libncurses5-dev  libncursesw5-dev xz-utils tk-dev
sudo apt-get install -y \
libbluetooth-dev \
libbz2-dev \
libdb-dev \
libexpat1-dev  \
libffi-dev  \
libgdbm-dev  \
liblzma-dev  \
libmpdec-dev  \
libncursesw5-dev \
libreadline-dev \
libsqlite3-dev \
libssl-dev \
zlib1g-dev

# download and install python 3.6
wget https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz
tar xvf Python-3.6.4.tgz

cd Python-3.6.4
./configure --enable-optimizations
# make -j8
sudo make altinstall

# install dependencies
sudo pip3.6 install --upgrade setuptools
sudo pip3.6 install -r requirements.txt
