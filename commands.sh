                                                                               
                                                                                
^!s::                                                                           
                                                                                
sendraw,                                                                        
                                                                                
(                                                                               
                                                                                
ffmpeg -i input_video.mp4 -ss 00:00:30 -t 00:00:10 -c:a copy -c:v copy cropped.mp4        
                                                                                
convert -resize 50% -depth 8 -background transparent plate.svg plate.png        
                                                                                
ffmpeg -i cropped.mp4 -i plate.png -filter_complex "[0:v][1:v] overlay=20:20:en$
                                                                                
ffmpeg -i plated.mp4 -vf drawtext="fontfile=Arial.ttf:text='I':fontsize=20:font$
                                                                                
)                                                                               
            
