all: apt_packages

apt_packages:
	sudo apt-get install `cat apt/packages`

install: all
	python setup.py

xmode:
	sudo xmodmap bash/.Xmodmap

clang:
	sudo sh ./clang.sh
