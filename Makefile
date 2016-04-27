all: apt_packages

apt_packages:
	brew install `cat apt/packages`

install: all
	python setup.py

cpas_to_esc:
	sudo cp ./bash/pc /usr/share/X11/xkb/symbols/pc
	sudo rm -rf /var/lib/xkb/*.xkm

clang:
	sudo sh ./clang.sh
