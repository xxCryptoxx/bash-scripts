#! bin/bash
echo "Hello there";
echo "";
echo "How many directories do you want? type 1..20";
read n


for i in $(seq 1 $n)
do 
	mkdir $i
done

ls;
echo "";
echo "Name of file to create?";
read thefilename;
touch $thefilename;
echo "We will start copying the file to all directories here..."
echo "";
for dir in *; do [ -d "$dir" ] && cp $thefilename "$dir"; done;
echo "";
echo "Copied into all folders...";
ls -l;
echo "Check";
exit;
