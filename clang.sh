# http://www.cnblogs.com/xiehongfeng100/p/4651972.html
mkdir ~/llvm-clang
cd ~/llvm-clang
svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm
cd llvm/tools
svn co http://llvm.org/svn/llvm-project/cfe/trunk clang
cd ../..
cd llvm/tools/clang/tools
svn co http://llvm.org/svn/llvm-project/clang-tools-extra/trunk extra
cd ../../../..
cd llvm/projects
svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt
cd ..

cd ~/llvm-clang
mkdir llvm-build
cd llvm-build
../llvm/configure --enable-optimized --enable-targets=host-only
make
sudo make install

cd ~/llvm-clang
svn co http://llvm.org/svn/llvm-project/libcxx/trunk libcxx
cd libcxx/lib
./buildit

sudo cp -r ~/llvm-clang/libcxx/include/ /usr/include/c++/v1/
ln -s ~/llvm-clang/libcxx/lib/libc++.so.1.0 ~/llvm-clang/libcxx/lib/libc++.so.1
ln -s ~/llvm-clang/libcxx/lib/libc++.so.1.0 ~/llvm-clang/libcxx/lib/libc++.so
sudo cp ~/llvm-clang/libcxx/lib/libc++.so* /usr/lib/

cd  ~/llvm-clang/
svn co http://llvm.org/svn/llvm-project/libcxxabi/trunk libcxxabi
cd libcxxabi/lib
./buildit

sudo cp -r ~/llvm-clang/libcxxabi/include/ /usr/include/c++/v1/
ln -s ~/llvm-clang/libcxxabi/lib/libc++abi.so.1.0 ~/llvm-clang/libcxxabi/lib/libc++abi.so.1
ln -s ~/llvm-clang/libcxxabi/lib/libc++abi.so.1.0 ~/llvm-clang/libcxxabi/lib/libc++abi.so
sudo cp ~/llvm-clang/libcxxabi/lib/libc++abi.so* /usr/lib/
