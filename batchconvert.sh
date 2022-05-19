!#/bin/bash
if [ ! -d "output" ]; then
    mkdir output
fi

clear
echo "jpg to webp batch converter tool"
echo "Implements webcodec v0.4.1"
read -p 'Start Conversion for jpg[y/n]? ' uservarjpg

if [ $uservarjpg == "y" ]
then
    read -p 'Quality percentage:' perc
    echo "Conversion will start for JPG"
    for filename in *.jpg; do
        echo "Converting: $filename"
        converter/bin/cwebp -preset "photo" -q $perc $filename -o "${filename%.*}.webp"
        mv "${filename%.*}.webp" output/"${filename%.*}.webp"
    done
fi

read -p 'Start Conversion for png[y/n]? ' uservarpng
if [ $uservarpng == "y" ]
then
    read -p 'Quality percentage:' perc
    echo "Conversion will start for PNG"
    for filename in *.png; do
        echo "Converting: $filename"
        converter/bin/cwebp -preset "photo" -q $perc $filename -o "${filename%.*}.webp"
        mv "${filename%.*}.webp" output/"${filename%.*}.webp"
    done
fi
