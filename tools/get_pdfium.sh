#!/bin/bash

wget https://github.com/bblanchon/pdfium-binaries/releases/download/chromium%2F5445/pdfium-linux-x64.tgz
wget https://github.com/bblanchon/pdfium-binaries/releases/download/chromium%2F5445/pdfium-linux-x86.tgz
wget https://github.com/bblanchon/pdfium-binaries/releases/download/chromium%2F5445/pdfium-linux-arm.tgz
wget https://github.com/bblanchon/pdfium-binaries/releases/download/chromium%2F5445/pdfium-linux-arm64.tgz
wget https://github.com/bblanchon/pdfium-binaries/releases/download/chromium%2F5445/pdfium-win-x64.tgz
wget https://github.com/bblanchon/pdfium-binaries/releases/download/chromium%2F5445/pdfium-win-x86.tgz
wget https://github.com/bblanchon/pdfium-binaries/releases/download/chromium%2F5445/pdfium-win-arm64.tgz
wget https://github.com/bblanchon/pdfium-binaries/releases/download/chromium%2F5445/pdfium-mac-x64.tgz
wget https://github.com/bblanchon/pdfium-binaries/releases/download/chromium%2F5445/pdfium-mac-arm64.tgz

mkdir linux-x64
mkdir linux-x86
mkdir linux-arm
mkdir linux-arm64
mkdir win-x64
mkdir win-x86
mkdir win-arm64
mkdir osx-x64
mkdir osx-arm64

tar -xvf pdfium-linux-x64.tgz -C linux-x64
tar -xvf pdfium-linux-x86.tgz -C linux-x86
tar -xvf pdfium-linux-arm.tgz -C linux-arm
tar -xvf pdfium-linux-arm64.tgz -C linux-arm64
tar -xvf pdfium-mac-x64.tgz -C osx-x64
tar -xvf pdfium-mac-arm64.tgz -C osx-arm64
tar -xvf pdfium-win-x64.tgz -C win-x64
tar -xvf pdfium-win-x86.tgz -C win-x86
tar -xvf pdfium-win-arm64.tgz -C win-arm64

mkdir -p ../src/Docnet.Core/runtimes/linux-x64/native/
mkdir -p ../src/Docnet.Core/runtimes/linux-x86/native/
mkdir -p ../src/Docnet.Core/runtimes/linux-arm/native/
mkdir -p ../src/Docnet.Core/runtimes/linux-arm64/native/
mkdir -p ../src/Docnet.Core/runtimes/osx-x64/native/
mkdir -p ../src/Docnet.Core/runtimes/osx-arm64/native/
mkdir -p ../src/Docnet.Core/runtimes/win-x64/native/
mkdir -p ../src/Docnet.Core/runtimes/win-x86/native/
mkdir -p ../src/Docnet.Core/runtimes/win-arm64/native/

cp linux-x64/lib/libpdfium.so ../src/Docnet.Core/runtimes/linux-x64/native/pdfium.so
cp linux-x64/LICENSE ../src/Docnet.Core/runtimes/linux-x64/native/LICENSE

cp linux-x86/lib/libpdfium.so ../src/Docnet.Core/runtimes/linux-x86/native/pdfium.so
cp linux-x86/LICENSE ../src/Docnet.Core/runtimes/linux-x86/native/LICENSE

cp linux-arm/lib/libpdfium.so ../src/Docnet.Core/runtimes/linux-arm/native/pdfium.so
cp linux-arm/LICENSE ../src/Docnet.Core/runtimes/linux-arm/native/LICENSE

cp linux-arm64/lib/libpdfium.so ../src/Docnet.Core/runtimes/linux-arm64/native/pdfium.so
cp linux-arm64/LICENSE ../src/Docnet.Core/runtimes/linux-arm64/native/LICENSE

cp osx-x64/lib/libpdfium.dylib ../src/Docnet.Core/runtimes/osx-x64/native/pdfium.dylib
cp osx-x64/LICENSE ../src/Docnet.Core/runtimes/osx-x64/native/LICENSE

cp osx-arm64/lib/libpdfium.dylib ../src/Docnet.Core/runtimes/osx-arm64/native/pdfium.dylib
cp osx-arm64/LICENSE ../src/Docnet.Core/runtimes/osx-arm64/native/LICENSE

cp win-x64/bin/pdfium.dll ../src/Docnet.Core/runtimes/win-x64/native/pdfium.dll
cp win-x64/LICENSE ../src/Docnet.Core/runtimes/win-x64/native/LICENSE

cp win-x86/bin/pdfium.dll ../src/Docnet.Core/runtimes/win-x86/native/pdfium.dll
cp win-x86/LICENSE ../src/Docnet.Core/runtimes/win-x86/native/LICENSE

cp win-arm64/bin/pdfium.dll ../src/Docnet.Core/runtimes/win-arm64/native/pdfium.dll
cp win-arm64/LICENSE ../src/Docnet.Core/runtimes/win-arm64/native/LICENSE

rm pdfium-linux-x64.tgz pdfium-linux-x86.tgz pdfium-linux-arm.tgz pdfium-linux-arm64.tgz pdfium-win-x64.tgz pdfium-win-x86.tgz pdfium-win-arm64.tgz pdfium-mac-x64.tgz pdfium-mac-arm64.tgz
rm -rf linux-x64 linux-x86 linux-arm linux-arm64 win-x64 win-x86 win-arm64 osx-x64 osx-arm64
