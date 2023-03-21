wget -i list.txt
# wget -i list_stickers.txt


# Remove the query parameters if it exists in the files downloaded by wget
for file in *.gif*; do 
    mv -- "$file" "${file%}.gif"
done

rename 's/^(\d+).*/${1}.gif/' *.gif

for file in *.webp*; do 
    mv -- "$file" "${file%}.webp"
done

rename 's/^(\d+).*/${1}.webp/' *.webp

for file in *.png*; do
    mv -- "$file" "${file%}.png"
done

rename 's/^(\d+).*/${1}.png/' *.png