# قايمة المتغيرات
O="\e[0m"
R="\e[31m" #لون احمر
G="\e[32m" #لون اخضر
B="\e[34m" #لون ازرق

# دائرة تثبيت الحزم المطلوبة
clear
read -p "Have you installed the PKGs required packages? (y/n):" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    clear
else
    ./setup.sh
    clear
fi

# logo
python logo.py

# البداية
echo -e "${G}input your IP:PORT from adb in develop options :${O}"
echo -e "${R}example=> 192.168.1.1:4444${O}"
read X

# الاقتران بالإداة
adb pair $X

# توصيل الجهاز بالاداة
echo -e "${B}NOW enter your IP:PORT from OUT of adb_pair list${O}"
read XX
adb connect $XX

# فتح موجه SSH للجهاز (shell for phone)
adb shell
cd /sdcard
echo -e "${R}Now you can open any folder 📂 as ROOT${O}"

