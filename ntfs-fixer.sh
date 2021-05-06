echo "Welcome to the NTFS Repair Script";
sudo fdisk -l;
echo "Please choose the path you want repaired(/dev/sda1):";
read pathrep;
echo "You have chosen $pathrep";
sudo ntfsfix $pathrep;
echo "It should be repaired now";
echo "Thank you";
exit
