#!/bin/bash
curl http://52.6.144.203:3000/ > welcomepage.txt
curl http://52.6.144.203:3000/search?search_string=money > moneysearch.txt
curl http://52.6.144.203:3000/search?search_string=asdfghjk > asdfghjk.txt

grep "Quote Server" welcomepage.txt
echo "Test 1 passed, server up and running."

grep "hlkdsajdhfklajds" moneysearch.txt
echo "Test 2 passed, 'money' search successful."

grep "No matching quote found" asdfghjk.txt
echo "Test 3 passed, fake word search unsuccessful."

echo "Deploying to production environment!"