read -p "Username: " USERNAME

echo "Enter Password: "
read -s PASSWORD

read -p "Enter Directory name: " DIRECTORY
dt=$(date '%d/%m/%Y %H:%M:%S');
echo $PWD

mkdir $DIRECTORY  

cd $DIRECTORY

touch cyber.log

echo $PWD >> cyber.log
echo $USER >> cyber.log
echo $dt >> cyber.log
echo $USERNAME >> cyber.log
echo $PASSWORD >> cyber.log

read -p "Number of packages to be installed: " PACKAGE_NUMBER

echo $PACKAGE_NUMBER >> cyber.log


count=0

while [ $count -lt $PACKAGE_NUMBER ]; do
        read -p "Package Name :" PACKAGE_NAME
	echo $PACKAGE_NAME >> cyber.log
        let count=count+1
	sudo apt-get $PACKAGE_NAME >>installation.log 2>>script_error.log
done

