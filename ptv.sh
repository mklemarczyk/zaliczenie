#!/bin/bash

function wyborProgramu {
	data=`date +"%Y-%m-%d"`;
	dialog --menu "Wybierz program:" 0 0 0 1 "TVP-1" 2 "TVP-2" 5 "Polsat" 17 "TVN" 2> "wybor.tmp";
	wybor=`cat "wybor.tmp"`;
	rm "wybor.tmp";
	pobierzProgram $wybor $data;
}

function pobierzProgram {
	wget -O "program.tmp" "http://tv.wp.pl/id,$1,d,$2,all,1,mprogramy.html" 2> /dev/null;
	wyswietlenieProgramu "program.tmp";
	rm "program.tmp";
}

function wyswietlenieProgramu {
	cat $1 | tr "<" "\n" > $1;
	godziny=`cat $1 | grep "tvHour"`;
	tytuly=`cat $1 | grep "tvProg"`	

	#poczatek=$[grep -n 'table class="zebraList"' $1 | cut -d : -f 1];
	#koniec=$[wc -l $1+1];
	#dotail=$[koniec-poczatek];

	#for ((  ;  ;  )) ; do
	#done
	
	for <zmienna> in <lista> ; do

	done
	
	
}


dialog --msgbox "Witaj w programie TV" 0 0;
wyborProgramu;



