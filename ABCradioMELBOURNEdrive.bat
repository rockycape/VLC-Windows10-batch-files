@echo off

cd "C:\Program Files (x86)\VideoLAN\VLC\"
dir
vlc.exe http://live-radio02.mediahubaustralia.com/3LRW/mp3/ --sout=#transcode{vcodec=none,acodec=mp3,ab=128,channels=2,samplerate=44100}:std{access=file{overwrite},mux=mp3,dst='D:\VLC\%DATE:~10,4%-%DATE:~7,2%-%DATE:~4,2%-ABCradioMELBOURNEdrive.mp3'} --run-time 3600 --stop-time=10800 vlc://quit
exit /B