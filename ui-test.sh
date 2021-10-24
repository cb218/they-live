#!/bin/bash
curl http://52.6.144.203:3000/ > welcomepage.txt
curl http://52.6.144.203:3000/search?search_string=money > moneysearch.txt
curl http://52.6.144.203:3000/search?search_string=asdfghjk > asdfghjk.txt

# grep "Quote Server" welcomepage.txt
# echo "Test 1 passed, server up and running."

# grep "money" moneysearch.txt
# echo "Test 2 passed, 'money' search successful."

# grep "Noogalaboo" asdfghjk.txt
# echo "Test 3 passed, fake word search unsuccessful."

TEST1VAL=$(grep -c "Quote Server" welcomepage.txt)
echo TEST1VAL
if [ TEST1VAL == 0 ]
then
  echo "Test 1 passed, server up and running."
else
  echo "Test 1 failed, could not locate server."
  exit 1
fi

TEST2VAL=$(grep -c "money" moneysearch.txt)
if [ TEST2VAL == 0 ]
then
  echo "Test 2 passed, 'money' search successful."
else
  echo "Test 2 failed, 'money' search failed."
  exit 1
fi

TEST3VAL=$(grep -c "No matching quote found" asdfghjk.txt)
if [ TEST3VAL == 0 ]
then
  echo "Test 3 passed, fake word search unsuccessful."
else
  echo "Test 3 failed, fake word search failed."
  exit 1
fi

echo "Deploying to production environment!"