#!/usr/bin/env bash
echo Making directory ~/.vodasms
mkdir ~/.vodasms
echo Copying files into above directory
cp -R vodaform vodasms.ini phonebook.example ~/.vodasms/
echo Making ~/bin
mkdir ~/bin
echo Copying vodasms into the above
cp vodasms ~/bin
echo Creating the default phone book
mv ~/.vodasms/phonebook.example ~/.vodasms/phonebook
echo Editing the .ini to point to the new ~/.vodasms directory
sed -i.orig -e "s/<installdir>/\~\/.vodasms\//g" ~/.vodasms/vodasms.ini
echo Done
echo Make sure to edit ~/.vodasms/vodasms.ini to add your username/password
