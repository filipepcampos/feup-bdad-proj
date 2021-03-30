#!/bin/bash
sqlite3 &> test_output.txt < commands
errorCount=$(cat test_output.txt | wc -l)
expectedCount=$(cat tests.sql | grep "^INSERT" | wc -l)

if [ "$errorCount" == "$expectedCount" ];
then
    echo "Test successful"
else
    echo "Test failed, expected $expectedCount errors but got $errorCount instead"
fi