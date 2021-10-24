#!/bin/bash
curl http://52.6.144.203:3000/ > welcomepage.txt
curl http://52.6.144.203:3000/search?search_string=money > moneysearch.txt
curl http://52.6.144.203:3000/search?search_string=asdfghjk > asdfghjk.txt

TEST1VAL=$(grep -c "Quote Server" welcomepage.txt)
if [ $TEST1VAL == 0 ]
then
  echo "Test 1 failed, could not locate server."
  exit 1
else
  echo "Test 1 passed, server up and running."
fi

TEST2VAL=$(grep -c "money" moneysearch.txt)
if [ $TEST2VAL == 0 ]
then
  echo "Test 2 failed, 'money' search failed."
  exit 1
else
  echo "Test 2 passed, 'money' search successful."
fi

#TEST3VAL=$(grep -c "No matching quote was found" asdfghjk.txt)
TEST3VAL=$(grep -c "djkfalhdsjfhlew vf esv" asdfghjk.txt)
if [ $TEST3VAL == 0 ]
then
  echo "Test 3 failed, fake word search failed."
  exit 1
else
  echo "Test 3 passed, fake word search unsuccessful."
fi

echo "Deploying to production environment!"