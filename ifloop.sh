#!/bin/bash/ -x
var1=10
var2=10

if  (($var1 >= $var2))
then
	echo "$var2 is greater than or equal to $var1"
else
	echo "$var2 is lesser than to $var1"
fi
