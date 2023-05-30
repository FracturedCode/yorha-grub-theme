for file in *.png; do
	convert "$file" -page +0+3 -background none -flatten "$file"
done
inkscape --export-type=png *.png
for file in *_out.png; do
	mv -- "$file" "${file%_out.png}.png"
done
