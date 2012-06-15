all:
	xcodebuild
	cp -R ./build/Release-iphoneos/TSSLauncher.app ./_tsslauncher/Applications/
	rm -rf ./build
	mv ./_tsslauncher/Applications/TSSLauncher.app/TSSLauncher ./_tsslauncher/Applications/TSSLauncher.app/TSSLauncher_
	cp ./bootstrap ./_tsslauncher/Applications/TSSLauncher.app/TSSLauncher
	chmod +x ./_tsslauncher/Applications/TSSLauncher.app/TSSLauncher
	chmod +s ./_tsslauncher/Applications/TSSLauncher.app/TSSLauncher_
	dpkg -b ./_tsslauncher
	mv ./_tsslauncher.deb ./tsslauncher.deb
imod: all
	cp -R ./_tsslauncher/Applications ../imod3g
	cp -R ./_tsslauncher/usr ../imod3g
