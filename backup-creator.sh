#! bin/bash

backup_dir="/home/$USER/MyBackups";

# Checks if the backup directory exists, if not then it will be created
if [[ -d "$backup_dir" ]]
then 
	echo "$backup_dir exists"
else
	cd /home/$USER/;
	mkdir MyBackups;
	echo "Directory created";
fi

# Creates compress files for each directory
tar Pczvf backup-alpha.tar.gz Downloads/;
tar Pczvf backup-beta.tar.gz Documents/;
tar Pczvf backup-gamma.tar.gz Music/;
tar Pczvf backup-theta.tar.gz Pictures/;

# Moves the tar files to the backup directory
mv -t $backup_dir/ backup-downloads.tar.gz backup-Documents.tar.gz backup-Music.tar.gz backup-Pictures.tar.gz;
echo "Backup Completed";
