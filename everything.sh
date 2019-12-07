sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update
sudo apt-get install aptitude -y
sudo aptitude install -y build-essential g++-8 gcc-8 git libboost-all-dev python-pip libssl-dev screen
sudo pip install cmake
export CC=gcc-8
export CXX=g++-8
git clone -b master --single-branch https://github.com/hashit-project/hashit
cd hashit
mkdir build
cd build
cmake ..
make
cd src
screen ./hashitd
