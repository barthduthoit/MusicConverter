A simple wraper to [ffmpeg](https://www.ffmpeg.org/), to allow conversion of flac audio files to mp3, with as little quality loss as possible. In order to runs things, you need to have ffmpeg installed. 
You can then simply initialize the project and place your flac files in the to_convert/ folder:
```
make init
```
And run conversions:
```
./convert.sh
```
