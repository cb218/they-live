#/bin/bash!
curl http://52.6.144.203:3000/ > welcomepage.txt
curl http://52.6.144.203:3000/search?search_string=money > moneysearch.txt
curl http://52.6.144.203:3000/search?search_string=asdfghjk > asdfghjk.txt

if [ grep -c "Quote Server" welcomepage.txt > 0 ]
then
  echo "Test 1 passed, server up and running."
else
  echo "Test 1 failed, could not locate server."
  exit 1
fi

if [ grep -c "money" moneysearch.txt > 0 ]
then
  echo "Test 2 passed, 'money' search successful."
else
  echo "Test 2 failed, 'money' search failed."
  exit 1
fi

if [ grep -c "No matching quote found" asdfghjk.txt > 0 ]
then
  echo "Test 3 passed, fake word search unsuccessful."
else
  echo "Test 3 failed, fake word search failed."
  exit 1
fi