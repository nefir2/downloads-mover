echo 'номер вашего компьютера: '`uname -n`;
echo 'имя вашей учётной записи: '`whoami`;
read ex;
if [ -n $ex ]; then
	if [[ $ex == "open" ]] || [[ $ex == "o" ]]; then
    	echo "starting: explorer.exe `uname -n`";
    	explorer.exe `uname -n`;
	else
		for i in *; do
			if [ $ex = $i ]; then
				echo "starting: explorer.exe $ex";
				explorer.exe $ex;
				break;
			else echo "$i != $ex";
			fi
		done 
		#echo "no match";
	fi
fi