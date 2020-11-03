#! /bin/bash
head=0
tail=0
declare -A Dict
for i in $(seq 1 50)
do
flip=$((RANDOM%2))
if [ $flip == 1 ]
then
	Dict[$i]="H"
	((head++))
else
	Dict[$i]="T"
	((tail++))
fi
done
echo "H : $head"
echo "T : $tail"
h=`expr $head \* 100 / 50 `
echo "Percentage of Head is $h % "
t=`expr $tail \* 100 / 50`
echo "Percentahe of Tail is $t %" 
