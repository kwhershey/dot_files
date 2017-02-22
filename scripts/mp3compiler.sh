cd /mnt/array/music
find . -regex ".*\.\(bmp\|jpeg\|jpg\|JPG\|MP3\|ogg\|mpg\|PNG\|mp3\|m4a\|aac\)"  -exec cp -n --parents \{\} /mnt/array/mp3music/ \;
flacsync -c 3 -t mp3 -m 2 -o -d /mnt/array/mp3music/ /mnt/array/music/
