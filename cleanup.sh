#Cleanup folders Script
#Sean Rickerd - srickerd@suse.com
#!/bin/bash

echo "Enter directory to clean"
read DIR
cd "$DIR"

PICTURES='Pictures'
if [ ! -d "$PICTURES" ]; then
	mkdir "$DIR/Pictures"
else
	echo "Moving all image files to the "Pictures" directory"
	mv "$DIR/"*".jpg" "$DIR/Pictures/" 2>"/dev/null"
	mv "$DIR/"*".gif" "$DIR/Pictures/" 2>"/dev/null"
	mv "$DIR/"*".png" "$DIR/Pictures/" 2>"/dev/null"
	echo "Done"
fi

PDFS='pdfs'
if [ ! -d "$PDFS" ]; then
	mkdir "$DIR/pdfs"
else
	echo "Moving all pdfs to the "pdfs" directory"
	mv "$DIR/"*".pdf" "$DIR/pdfs/" 2>"/dev/null"
	mv "$DIR/"*".PDF" "$DIR/pdfs/" 2>"/dev/null"
	echo "Done"
fi

DOCUMENTS='Documents'
if [ ! -d "$DOCUMENTS" ]; then
	mkdir "$DIR/Documents"
else 
	echo "Moving all documents to the "Documents" directory"
	mv "$DIR/"*".doc" "$DIR/Documents/" 2>"/dev/null"
	mv "$DIR/"*".odp" "$DIR/Documents/" 2>"/dev/null"
	mv "$DIR/"*".odt" "$DIR/Documents/" 2>"/dev/null"
	mv "$DIR/"*".docx" "$DIR/Documents/" 2>"/dev/null"
	mv "$DIR/"*".xls" "$DIR/Documents/" 2>"/dev/null"
	mv "$DIR/"*".xlsx" "$DIR/Documents/" 2>"/dev/null"
	mv "$DIR/"*".oxt" "$DIR/Documents/" 2>"/dev/null"
	mv "$DIR/"*".txt" "$DIR/Documents/" 2>"/dev/null"
	echo "Done"
fi

ARCHIVES='Archives'
if [ ! -d "$ARCHIVES" ]; then
	mkdir "$DIR/Archives"
else
	echo "Moving all archives to the "Archives" directory"
	mv "$DIR/"*".tar*" "$DIR/Archives/" 2>"/dev/null"
	mv "$DIR/"*".zip" "$DIR/Archives/" 2>"/dev/null"
	echo "Done"
fi

EXECUTABLES='Executables'
if [ ! -d "$EXECUTABLES" ]; then
	mkdir "$DIR/Executables"
else
	echo "Moving all executables to the "Executables" folder"
	mv "$DIR/"*".run" "$DIR/Executables/" 2>"/dev/null"
	mv "$DIR/"*".sh" "$DIR/Executables/" 2>"/dev/null"
	mv "$DIR/"*".bin" "$DIR/Executables/" 2>"/dev/null"
	mv "$DIR/"*".bundle" "$DIR/Executables/" 2>"/dev/null"
	echo "Done"
fi

RPMS='RPMs'
if [ ! -d "$RPMS" ]; then
	mkdir "$DIR/RPMs"
else
	echo "Moving all packages to the "RPMs" folder"
	mv "$DIR/"*".rpm" "$DIR/RPMs/" 2>"/dev/null"
	echo "Done"
fi

IMAGES='Images'
if [ ! -d "$IMAGES" ]; then
	mkdir "$DIR/Images"
else
	echo "Moving all images to the "Images" folder"
	mv "$DIR/"*".iso" "$DIR/Images/" 2>"/dev/null"
	mv "$DIR/"*".qcow*" "$DIR/Images/" 2>"/dev/null"
	echo "Done"
fi

DECKS='Decks'
if [ ! -d "$DECKS" ]; then
	mkdir "$DIR/Decks"
else
	echo "Moving all presentations to the "Decks" folder"
	mv "$DIR/"*".ppt" "$DIR/Decks" 2>"/dev/null"
	mv "$DIR/"*".pptx" "$DIR/Decks" 2>"/dev/null"
	echo "Done"
fi
