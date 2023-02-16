export h1="//26k-10-dc10/studocredir/UC33_9/Мои"; #переменные
export h2="документы/.c-users-uc33_9-downloads";
if [ ! -d ./logs ]; then #создание папки "logs", если она не существует
	mkdir logs;
	echo "made ./logs/";
fi
export ld="./logs/log-dones.txt"; #переменные
export le="./logs/log-errors.txt";
export inp="./INPUT.TXT";
if [ ! -s $inp ]; then #проверка на пустоту файла ввода.
	export ans=`cat $inp`;
	if [[ ans != n* ]]; then #проверка файла на иные значения кроме y/n
		if [[ ans != y* ]]; then
			echo "n" > $inp;
		fi
	fi
fi
exec 0< $inp; #перенаправление ввода/вывода в соответствующие файлы
exec 1> $ld;
exec 2> $le;
mkdir $h1\ $h2/`uname -n`; #создание папки с именем компьютера
mv -vi ~/downloads/* $h1\ $h2/`uname -n`/; #перемещение файлов из загрузок в папку ./`uname -n`
