export ld="./logs/log-dones.txt";
export le="./logs/log-errors.txt";
export inp="./INPUT.TXT";
if [ ! -d ./logs ]; then #создание папки "logs", если она не существует
	mkdir logs;
	echo "created ./logs/";
	touch $ld;
	echo "created $ld";
	touch $le;
	echo "created $le";
fi
if [ ! -e $inp ]; then
	touch $inp;
	echo "$inp didn't exist. created it.";
fi
if [ ! -s $inp ]; then #проверка на пустоту файла ввода.
	echo "n" > $inp;
	echo "file was empty. added \"n\" in $inp";
#elif [[ ! $inp == n* ]]; then #проверка файла на иные значения кроме y/n
#	if [[ ! $inp == y* ]]; then
#		echo "n" > $inp;
#		echo "$inp contained not a y/n. added \"n\" in it.";
#	fi
fi

exec 0< $inp; #перенаправление ввода/вывода в соответствующие файлы
exec 1> $ld;
exec 2> $le;

mkdir ./`uname -n`;
mv -vi ~/downloads/* ./`uname -n`/;

#export h1="//26k-10-dc10/studocredir/UC33_9/Мои"; #переменные
#export h2="документы/.c-users-uc33_9-downloads";
#mkdir $h1\ $h2/`uname -n`; #создание папки с именем компьютера
#mv -vi ~/downloads/* $h1\ $h2/`uname -n`/; #перемещение файлов из загрузок в папку ./`uname -n`