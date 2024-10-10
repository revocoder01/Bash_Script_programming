#!/bin/bash
for file in txts/*.txt
do
	tar -czvf $file.tar.gz $file
done
echo "Archiving is Finished."
