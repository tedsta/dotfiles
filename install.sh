#!/usr/bin/env sh

sudo apt-get install chromium-browser vim python3-pip git gcc

# Some game dev stuff
sudo apt-get install libfreetype6-dev libavutil-dev libsdl2-dev libavcodec-dev libavformat-dev libavfilter-dev libavdevice-dev libpostproc-dev libswscale-dev libavresample-dev

# Install OpenCL
sudo apt-get install cmake pkg-config python ocl-icd-dev ocl-icd-opencl-dev libdrm-dev libxfixes-dev libxext-dev llvm-3.5-dev clang-3.5 libclang-3.5-dev libtinfo-dev libedit-dev zlib1g-dev

wget https://01.org/sites/default/files/beignet-1.0.3-source.tar.gz
tar -xzvf beignet-1.0.3-source.tar.gz
rm beignet-1.0.3-source.tar.gz
mkdir -p Beignet-1.0.3-Source/build
cd Beignet-1.0.3-Source/build
cmake ..
make install
cd ../..

# Install vimrc file
cp vimrc ~/.vimrc

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
