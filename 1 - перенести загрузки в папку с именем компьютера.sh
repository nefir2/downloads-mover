export ld="./logs/"`uname -n`"_log-imports.txt";
export le="./logs/"`uname -n`"_log-errors.txt";
export inp="./INPUT.TXT";
if [ ! -d ./logs ]; then #создание папки "logs", если она не существует
	mkdir logs;
	echo "created ./logs/";
fi
if [ ! -e $ld ]; then
	touch $ld;
	echo "created $ld";
fi
if [ ! -e $le ]; then
	touch $le;
	echo "created $le";
fi
if [ ! -e $inp ]; then
	touch $inp;
	echo "created $inp";
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

export te="./logs/"`uname -n`"_tee";

mkdir ./`uname -n` | tee $te;
mv -vi ~/downloads/* ./`uname -n`/ | tee $te;

#export h1="//26k-10-dc10/studocredir/UC33_9/Мои"; #переменные
#export h2="документы/.c-users-uc33_9-downloads";
#mkdir $h1\ $h2/`uname -n`; #создание папки с именем компьютера
#mv -vi ~/downloads/* $h1\ $h2/`uname -n`/; #перемещение файлов из загрузок в папку ./`uname -n`
