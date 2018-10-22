                                                                               
                                                                                
^!s::                                                                           
                                                                                
sendraw,                                                                        
                                                                                
(                                                                               
                                                                                
ffmpeg -i input_video.mp4 -ss 00:00:30 -t 00:00:10 -c:a copy -c:v copy cropped.mp4        
                                                                                
convert -depth 8 -background none -resize 50% plate.svg plate.png        
                                                                                
ffmpeg -i cropped.mp4 -i plate.png -filter_complex \ "[0:v][1:v]overlay=0:446:enable=between(t\,1\,9)" -c:a copy plated.mp4

ffmpeg -i plated.mp4 -vf drawtext="fontfile=Arial.ttf:text='Last Test':fontsize=20:fontcolor=black:x=200:y=476:enable='between(t\,2\,9)'" -c:a copy result.mp4
                                                                                
)                                                                               
            
