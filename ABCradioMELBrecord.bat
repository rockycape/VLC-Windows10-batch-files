@echo off

cd "C:\Program Files (x86)\VideoLAN\VLC\"
dir
vlc.exe http://live-radio02.mediahubaustralia.com/3LRW/mp3/ --sout=#transcode{vcodec=none,acodec=mp3,ab=128,channels=2,samplerate=44100}:std{access=file{no-overwrite},mux=mp3,dst='D:/VLC/VLC.mp3'} vlc://quit
exit /B