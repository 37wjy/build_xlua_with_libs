mkdir build_uwp_54 & pushd build_uwp_54
cmake -DLUA_VERSION=5.4.1 -DLUAC_COMPATIBLE_FORMAT=ON -G "Visual Studio 17 2022" -A Win32 -DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION=10.0 ..
popd
cmake --build build_uwp_54 --config Release
md plugin_lua54\Plugins\WSA\x86
copy /Y build_uwp_54\Release\xlua.dll plugin_lua54\Plugins\WSA\x86\xlua.dll

mkdir build_uwp64_54 & pushd build_uwp64_54
cmake -DLUA_VERSION=5.4.1 -DLUAC_COMPATIBLE_FORMAT=ON -G "Visual Studio 17 2022" -A x64 -DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION=10.0 ..
popd
cmake --build build_uwp64_54 --config Release
md plugin_lua54\Plugins\WSA\x64
copy /Y build_uwp64_54\Release\xlua.dll plugin_lua54\Plugins\WSA\x64\xlua.dll

mkdir build_uwp_arm64_54 & pushd build_uwp_arm64_54
cmake -DLUA_VERSION=5.4.1 -DLUAC_COMPATIBLE_FORMAT=ON -G "Visual Studio 17 2022" -A ARM64 -DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION=10.0 ..
popd
cmake --build build_uwp_arm64_54 --config Release
md plugin_lua54\Plugins\WSA\ARM64
copy /Y build_uwp_arm64_54\Release\xlua.dll plugin_lua54\Plugins\WSA\ARM64\xlua.dll

pause
