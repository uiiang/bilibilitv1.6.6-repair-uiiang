#d2j-dex2jar --force ../../bv0/build/apk/classes.dex
rm $(find classes -name *.class)
javac -Xdiags:verbose -encoding UTF-8 -source 1.8 -target 1.8 -classpath 'lib/*' $(find classes -name *.java)
rm $(find classes/com/bilibili/tv -name R\$*.class)
rm classes/com/bilibili/tv/R.class
rm classes/bl/u.class
java -jar dx.jar --dex --output=out.dex classes
java -jar baksmali-2.5.2.jar d out.dex -l -o ../smali

# 电子书 UI 包（EbookReaderPanel 等新封装类）移入 smali_classes3，
# 避免主 dex 方法数超限（65536）；model/parser/util 等保留在主 dex
if [ -d ../smali_classes3 ]; then
    rm -rf ../smali_classes3/com/bilibili/tv/ebook
    if [ -d ../smali/com/bilibili/tv/ebook/ui ]; then
        mkdir -p ../smali_classes3/com/bilibili/tv/ebook
        mv ../smali/com/bilibili/tv/ebook/ui ../smali_classes3/com/bilibili/tv/ebook/ui
    fi
fi
