#!/bin/bash
sqlite3 &> t1_output.txt < cmd1
errorCount=$(cat t1_output.txt | wc -l)
expectedCount=$(cat tests.sql | grep "^INSERT" | wc -l)

if [ "$errorCount" == "$expectedCount" ];
then
    echo "Error Test successful"
else
    echo "Error Test failed, expected $expectedCount errors but got $errorCount instead, please check t1_output.txt"
fi

sqlite3 &> t2_output.txt < cmd2
errorCount=$(cat t2_output.txt | wc -l)
if [ "$errorCount" -eq "0" ];
then
    echo "povoar.sql successful"
else
    echo "povoar.sql generated $errorCount errors, please check t2_output.txt"
fi