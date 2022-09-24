echo "Enter the file name : "
read fname
res=`ls | grep $fname -c`

if [ $res -gt 0 ]
then
	echo "file is found..................."
	echo " Enter the word that you search: .."
	read word
	res1=`cat $fname | grep -w $word -c`
	cat $fname | grep -w $word > temp_file
	if [ $res1 -gt 0 ]
	then
		echo "the word is fond  $res1 time in the file.........."
		echo "      "
		echo "The outpot is "
		echo "    "
		cat temp_file
	else
		echo "The word is not found in file"
	fi
else
	echo "Error:: file is not found................."
fi	
