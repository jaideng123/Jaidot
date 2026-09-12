scons

scons platform=windows
scons platform=windows target=template_debug arch=x86_64
scons platform=windows target=template_release arch=x86_64

scons platform=android target=template_debug arch=arm32
scons platform=android target=template_debug arch=arm64 generate_android_binaries=yes
scons platform=android target=template_release arch=arm32
scons platform=android target=template_release arch=arm64
scons platform=android target=template_release arch=x86_32
scons platform=android target=template_release arch=x86_64 generate_android_binaries=yes

scons platform=android arch=arm32 production=yes target=editor
scons platform=android arch=arm64 production=yes target=editor
scons platform=android arch=x86_32 production=yes target=editor
scons platform=android arch=x86_64 production=yes target=editor generate_android_binaries=yes

scons platform=web target=template_release threads=no dlink_enabled=yes
scons platform=web target=template_debug threads=no dlink_enabled=yes
mv bin/godot.web.template_release.wasm32.zip bin/web_release.zip
mv bin/godot.web.template_debug.wasm32.zip bin/web_debug.zip