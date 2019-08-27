mp4paths=(./*.tga)              # save mp4 file names in array
mp4names=("${mp4paths[@]##*/}")    # remove leading path components
name=("${mp4names[@]%.*}")         # remove extension
srt=(small/*.tga)                   # save srt file names in array
for i in "${!srt[@]}"              # for each index in the list of array indices 
do                                 # do stuff here...
mv "${srt[$i]}" small/"${name[$i]}".tga
done
