echo "Beginning..."
echo "Listing Harddrive's"
echo ""
sudo df;
echo "Choose the USB Drive";
read usbdrive;
echo "You chose: $usbdrive";
echo "Unmounting: $usbdrive":
sudo umount /dev/$usbdrive;
echo ""; 

echo "Formatting $usbdrive";
sudo mkfs.vfat /dev/$usbdrive;
echo "";

echo "Verifying $usbdrive"
sudo fsck /dev/$usbdrive;
echo "";

echo "Mounting $usbdrive";
sudo rmdir /media/USB;
echo "Mount Point Removed";
sudo mkdir /media/USB;
echo "Mount Point Created";
sudo mount -t vfat /dev/$usbdrive /media/USB -o uid=1000
echo "";

echo "Complete"
