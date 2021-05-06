#! bin/bash
echo "Hello there";
echo "";
mkdir {1..n}; //replace 'n' with the amount of directories you want created 
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
