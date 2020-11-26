#! /bin/bash

saveDir="png"
mkdir png 
mv rename_png.sh png/

for file in *.mmd ; do
	bname=$(basename "$file" .png)
    saveName="${saveDir}/${bname}.png"
    mmdc -i "$file" -o "$saveName" -s 2
    
done

