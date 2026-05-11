case "$1" in
    -i|--install)
        echo "Installing build environment..."
        sudo apt install apktool signapk openjdk-8-jdk
        sudo update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac
        echo "Installation complete!"
        exit 0
    ;;
    -d|--decompile)
        if [ -d mybv ]; then
            echo "错误：mybv目录已存在" 1>&2
            exit 1
        fi
        echo "Decompiling APK..."
        apktool d test.apk -o mybv
        echo "Decompilation complete!"
        exit 0
    ;;
    -h|--help)
        echo "Usage: ./build.sh [OPTION] [PACKAGE_ID]"
        echo ""
        echo "Options:"
        echo "  -i, --install          Install build environment"
        echo "  -d, --decompile        Decompile test.apk to mybv/"
        echo "  -p, --package [ID]     Build with package ID (default: com.bilibili.tv)"
        echo "  -s, --special [ID]     Build with package ID (no update.json)"
        echo "  -h, --help             Show this help message"
        echo ""
        echo "Examples:"
        echo "  ./build.sh -p uii.ang.bilitv    # Build with package ID"
        echo "  ./build.sh                       # Build without changing package ID"
        exit 0
    ;;
    -p|--package)
        if [ -n "$2" ]; then
            packageid="$2"
        else
            packageid='com.bilibili.tv'
        fi
        
        echo "========================================="
        echo "Building APK with package ID: $packageid"
        echo "========================================="
        
        # Check MultiDex directories
        echo ""
        echo "Checking MultiDex directories..."
        if [ -d "mybv/smali_classes2" ]; then
            echo "✓ smali_classes2/ found (will be compiled to classes2.dex)"
        else
            echo "! smali_classes2/ not found"
        fi
        if [ -d "mybv/smali_classes3" ]; then
            echo "✓ smali_classes3/ found (will be compiled to classes3.dex)"
        else
            echo "! smali_classes3/ not found"
        fi
        
        # Clean build directories
        echo ""
        echo "Cleaning build directories..."
        rm -rf mybv/build
        rm -rf mybv/dist
        echo "✓ Cleaned mybv/build and mybv/dist"
        
        # Update package ID
        echo ""
        echo "Updating package ID..."
        sed -i "/renameManifestPackage/c\ \ renameManifestPackage: $packageid" mybv/apktool.yml
        sed -i "s/android:authorities=\"[^\"]*\\.provider\\./android:authorities=\"$packageid.provider./g" mybv/AndroidManifest.xml
        sed -i "s/android:authorities=\"[^\"]*\\.fileprovider/android:authorities=\"$packageid.fileprovider/g" mybv/AndroidManifest.xml
        sed -i "s/android:authorities=\"[^\"]*\\.fileProvider/android:authorities=\"$packageid.fileProvider/g" mybv/AndroidManifest.xml
        sed -i "s/\"[^\"]*\\.provider\\.TvSearchSuggestionProvider\"/\"$packageid.provider.TvSearchSuggestionProvider\"/g" mybv/smali/com/bilibili/tv/provider/TvSearchSuggestionProvider.smali
        sed -i "s/\"[^\"]*\\.provider\\.TvSearchSuggestionProvider\"/\"$packageid.provider.TvSearchSuggestionProvider\"/g" mybv/smali/com/bilibili/tv/provider/TvSearchSuggestionProvider\$a.smali
        sed -i "s/\"[^\"]*\\.provider\\.TvSearchSuggestionProvider\"/\"$packageid.provider.TvSearchSuggestionProvider\"/g" mybv/smali/com/bilibili/tv/ui/search/SearchActivity.smali
        sed -i "s/\"[^\"]*\\.provider\\.TvSearchSuggestionProvider\"/\"$packageid.provider.TvSearchSuggestionProvider\"/g" mybv/smali/bl/afh.smali
        sed -i "s/\"[^\"]*\\.provider\\.TvSearchSuggestionProvider\"/\"$packageid.provider.TvSearchSuggestionProvider\"/g" mybv/java/classes/com/bilibili/tv/ui/search/SearchActivity.java
        echo "✓ Package ID updated to: $packageid"
        
        # Compile Java code
        echo ""
        echo "Compiling Java code..."
        cd mybv/java
        ./build.sh
        cd ../..
        echo "✓ Java code compiled"
        
        # Remove third-party libraries from primary DEX (they are already in MultiDex directories)
        echo ""
        echo "Organizing MultiDex structure..."
        if [ -d "mybv/smali/okhttp3" ]; then
            rm -rf mybv/smali/okhttp3
            echo "✓ Removed okhttp3 from smali/ (already in smali_classes2/)"
        fi
        if [ -d "mybv/smali/okio" ]; then
            rm -rf mybv/smali/okio
            echo "✓ Removed okio from smali/ (already in smali_classes2/)"
        fi
        if [ -d "mybv/smali/retrofit2" ]; then
            rm -rf mybv/smali/retrofit2
            echo "✓ Removed retrofit2 from smali/ (already in smali_classes2/)"
        fi
        if [ -d "mybv/smali/com/google/android/exoplayer2" ]; then
            rm -rf mybv/smali/com/google/android/exoplayer2
            echo "✓ Removed exoplayer2 from smali/ (already in smali_classes3/)"
        fi
        
        # Build APK with apktool
        echo ""
        echo "Building APK with apktool..."
        echo "This may take a few minutes..."
        java -jar mybv/apktool.jar b --use-aapt2 mybv
        if [ $? -ne 0 ]; then
            echo "✗ APK build failed!"
            exit 1
        fi
        echo "✓ APK built successfully"
        
        # Sign APK
        echo ""
        echo "Signing APK..."
        java -jar /usr/bin/signapk platform.x509.pem platform.pk8 ./mybv/dist/mybv.apk mybv.apk
        if [ $? -ne 0 ]; then
            echo "✗ APK signing failed!"
            exit 1
        fi
        echo "✓ APK signed successfully"
        
        # Check DEX files
        echo ""
        echo "Checking DEX files in APK..."
        dex_count=$(unzip -l mybv.apk | grep -c "classes.*\.dex")
        echo "✓ Found $dex_count DEX file(s)"
        unzip -l mybv.apk | grep "classes.*\.dex"
        
        # Generate update.json
        echo ""
        echo "Generating update.json..."
        cat <<EOF > update.json
{
    "apkMd5":"$(md5sum mybv.apk|awk '{print $1}')",
    "apkUrl":"https://github.com/uiiang/bilibilitv1.6.6-repair-uiiang/raw/refs/heads/main/mybv.apk",
    "fileSize":$(stat -c %s mybv.apk),
    "id":"",
    "newFeature":"",
    "publishTime":0,
    "title":"New",
    "upgradeType":1,
    "versionCode":$(date '+%Y%m%d'),
    "versionName":"1.6.6.$(date '+%Y%m%d')"
}
EOF
        echo "✓ update.json generated"
        
        # Final summary
        echo ""
        echo "========================================="
        echo "Build completed successfully!"
        echo "========================================="
        echo "APK file: mybv.apk"
        echo "APK size: $(du -h mybv.apk | cut -f1)"
        echo "Package ID: $packageid"
        echo "DEX files: $dex_count"
        echo "MD5: $(md5sum mybv.apk|awk '{print $1}')"
        echo ""
        echo "You can now install the APK with:"
        echo "  adb install mybv.apk"
        echo "========================================="
        
        exit 0
    ;;
    -s|--special)
        if [ -n "$2" ]; then
            packageid="$2"
        else
            packageid='com.bilibili.tv'
        fi
        
        echo "Building APK with package ID: $packageid"
        
        rm -rf mybv/build
        rm -rf mybv/dist
        sed -i "/renameManifestPackage/c\ \ renameManifestPackage: $packageid" mybv/apktool.yml
        sed -i "s/android:authorities=\"[^\"]*\\.provider\\./android:authorities=\"$packageid.provider./g" mybv/AndroidManifest.xml
        sed -i "s/android:authorities=\"[^\"]*\\.fileprovider/android:authorities=\"$packageid.fileprovider/g" mybv/AndroidManifest.xml
        sed -i "s/android:authorities=\"[^\"]*\\.fileProvider/android:authorities=\"$packageid.fileProvider/g" mybv/AndroidManifest.xml
        sed -i "s/\"[^\"]*\\.provider\\.TvSearchSuggestionProvider\"/\"$packageid.provider.TvSearchSuggestionProvider\"/g" mybv/smali/com/bilibili/tv/provider/TvSearchSuggestionProvider.smali
        sed -i "s/\"[^\"]*\\.provider\\.TvSearchSuggestionProvider\"/\"$packageid.provider.TvSearchSuggestionProvider\"/g" mybv/smali/com/bilibili/tv/provider/TvSearchSuggestionProvider\$a.smali
        sed -i "s/\"[^\"]*\\.provider\\.TvSearchSuggestionProvider\"/\"$packageid.provider.TvSearchSuggestionProvider\"/g" mybv/smali/com/bilibili/tv/ui/search/SearchActivity.smali
        sed -i "s/\"[^\"]*\\.provider\\.TvSearchSuggestionProvider\"/\"$packageid.provider.TvSearchSuggestionProvider\"/g" mybv/smali/bl/afh.smali
        sed -i "s/\"[^\"]*\\.provider\\.TvSearchSuggestionProvider\"/\"$packageid.provider.TvSearchSuggestionProvider\"/g" mybv/java/classes/com/bilibili/tv/ui/search/SearchActivity.java
        cd mybv/java;./build.sh;cd ../..
        apktool b --use-aapt2 mybv
        java -jar /usr/bin/signapk platform.x509.pem platform.pk8 ./mybv/dist/mybv.apk mybv.apk
        
        echo "Build completed: mybv.apk"
        exit 0
    ;;
    *)
        echo "========================================="
        echo "Building APK (default mode)"
        echo "========================================="
        
        # Check MultiDex directories
        echo "Checking MultiDex directories..."
        if [ -d "mybv/smali_classes2" ]; then
            echo "✓ smali_classes2/ found"
        fi
        if [ -d "mybv/smali_classes3" ]; then
            echo "✓ smali_classes3/ found"
        fi
        
        # Compile Java code
        echo ""
        echo "Compiling Java code..."
        cd mybv/java
        ./build.sh
        cd ../..
        echo "✓ Java code compiled"
        
        # Build APK
        echo ""
        echo "Building APK..."
        apktool b -c --use-aapt2 mybv
        if [ $? -ne 0 ]; then
            echo "✗ APK build failed!"
            exit 1
        fi
        echo "✓ APK built successfully"
        
        # Sign APK
        echo ""
        echo "Signing APK..."
        java -jar /usr/bin/signapk platform.x509.pem platform.pk8 ./mybv/dist/mybv.apk mybv.apk
        if [ $? -ne 0 ]; then
            echo "✗ APK signing failed!"
            exit 1
        fi
        echo "✓ APK signed successfully"
        
        # Check DEX files
        echo ""
        echo "Checking DEX files..."
        dex_count=$(unzip -l mybv.apk | grep -c "classes.*\.dex")
        echo "✓ Found $dex_count DEX file(s)"
        
        # Generate update.json
        cat <<EOF > update.json
{
    "apkMd5":"$(md5sum mybv.apk|awk '{print $1}')",
    "apkUrl":"https://github.com/uiiang/bilibilitv1.6.6-repair-uiiang/raw/refs/heads/main/mybv.apk",
    "fileSize":$(stat -c %s mybv.apk),
    "id":"",
    "newFeature":"",
    "publishTime":0,
    "title":"New",
    "upgradeType":1,
    "versionCode":$(date '+%Y%m%d'),
    "versionName":"1.6.6.$(date '+%Y%m%d')"
}
EOF
        
        # Final summary
        echo ""
        echo "========================================="
        echo "Build completed successfully!"
        echo "========================================="
        echo "APK file: mybv.apk"
        echo "APK size: $(du -h mybv.apk | cut -f1)"
        echo "DEX files: $dex_count"
        echo "MD5: $(md5sum mybv.apk|awk '{print $1}')"
        echo "========================================="
        
        exit 0
    ;;
esac
