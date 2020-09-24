#This is a script to pull a video from the web and convert it to into a GIF

#Pulling video
wget https://d3jbhadj57dczt.cloudfront.net/preview-786421-I4uK0sZxaI-high.mp4

#Renaming file
mv preview-786421-I4uK0sZxaI-high.mp4 video.mp4

#Using ffmpeg to convert video into a looping gif
#The size of the gif will be 360px and have a frame rate of 10

ffmpeg -i video.mp4 -vf "fps=10,scale=360:-1:flags=lanczos" -c:v pam -f image2pipe - | convert -delay 10 - -loop 0 -layers optimize sample.gif

#Opens the gif file
display sample.gif
