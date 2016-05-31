# ffmpeg -ss 00:06:58 -i Harry_Potter_And_The_Goblet_Of_Fire.m4v -vcodec libx264 -acodec copy -t 3.5 -vf eq=1:0:1.2:1.2:1:1:1 -preset slow -crf 16 clip-2.mp4

# ffmpeg \
# -ss 02:15:26.700 \
# -accurate_seek \
# -i "/Users/edward/Movies/films/Harry Potter/1 - The Philosophers Stone/Harry_Potter_And_The_Philosophers_Stone.m4v" \
# -vcodec libx264 \
# -acodec copy \
# -t 00:00:02.35 \
# -preset slow \
# -crf 16 clip-3.mp4

# ffmpeg \
# -ss 02:15:26 \
# -i "/Users/edward/Movies/films/Harry Potter/1 - The Philosophers Stone/Harry_Potter_And_The_Philosophers_Stone.m4v" \
# -c:v libx264 \
# -c:a copy \
# -r 24 \
# -x264opts keyint=24:min-keyint=24:scenecut=-1 \
# -crf 16 \
# -t 00:00:10 \
# out.mp4

# ffmpeg \
# -ss 00:00:01.5 \
# -accurate_seek \
# -i "out.mp4" \
# -vcodec libx264 \
# -acodec copy \
# -t 00:00:02.35 \
# -preset slow \
# -crf 16 \
# clip-4.mp4

# -----

# ffmpeg \
# -ss 02:15:26.700 \
# -accurate_seek \
# -i "/Users/edward/Movies/films/Harry Potter/1 - The Philosophers Stone/Harry_Potter_And_The_Philosophers_Stone.m4v" \
# -t 00:00:02.35 \
# ./tmp/clip-3-%03d.png

# ffmpeg \
# -ss 02:15:26.700 \
# -accurate_seek \
# -i "/Users/edward/Movies/films/Harry Potter/1 - The Philosophers Stone/Harry_Potter_And_The_Philosophers_Stone.m4v" \
# -t 00:00:02.35 \
# -strict -2 \
# ./clip-3.aac

# ffmpeg \
# -i ./tmp/clip-3-%03d.png \
# -i ./clip-3.aac \
# -r 25 \
# -vcodec libx264 \
# -acodec copy \
# -preset slow \
# -crf 16 \
# -strict -2 \
# -bsf:a aac_adtstoasc \
# ./clip-3.mp4

# -----

# -----

# ffmpeg \
# -ss 02:15:29.000 \
# -accurate_seek \
# -i "/Users/edward/Movies/films/Harry Potter/1 - The Philosophers Stone/Harry_Potter_And_The_Philosophers_Stone.m4v" \
# -t 00:00:05.00 \
# ./tmp/clip-5-%03d.png

# ffmpeg \
# -ss 02:15:29.000 \
# -accurate_seek \
# -i "/Users/edward/Movies/films/Harry Potter/1 - The Philosophers Stone/Harry_Potter_And_The_Philosophers_Stone.m4v" \
# -t 00:00:05.000 \
# -strict -2 \
# ./clip-5.aac

ffmpeg \
-i ./tmp/clip-5-%03d.png \
-i ./clip-5.aac \
-r 25 \
-vcodec libx264 \
-acodec copy \
-preset slow \
-crf 16 \
-strict -2 \
-bsf:a aac_adtstoasc \
./clip-5.mp4

# -----
