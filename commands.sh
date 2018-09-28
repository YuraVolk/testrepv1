                                                                               
                                                                                
^!s::                                                                           
                                                                                
sendraw,                                                                        
                                                                                
(                                                                               
                                                                                
ffmpeg -ss 31 -t 10 -i input_video.mp4 -c:v copy -c:a copy cropped.mp4          
                                                                                
convert plate.svg -resize 50% -depth 8 -background transparent plate.png        
                                                                                
ffmpeg -i cropped.mp4 -i plate.png -filter_complex "[0:v][1:v] overlay=20:20:en$
                                                                                
ffmpeg -i plated.mp4 -vf drawtext="fontfile=Arial.ttf:text='I':fontsize=20:font$
                                                                                
)                                                                               
            
