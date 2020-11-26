#! /bin/bash

saveDir="mmd"
mkdir mmd 
mv mmd.sh mmd/
mv rename_png.sh mmd/


for file in *.ttl ; do
	bname=$(basename "$file" .mmd)
    saveName="${saveDir}/${bname}.mmd"
    python3 /Users/nicola/Downloads/CRITERIA-master/criteria.py ontology "$file" "$saveName"
done

