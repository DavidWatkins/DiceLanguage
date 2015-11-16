#/usr/bin/sh
read -p "Press [Enter] key to start Hello World Demo"
echo "Compiling source"
cd ../../Compiler
./build.sh
cp dice ../Test\ Suite/Hello_World_Demo/dice
cd ../Test\ Suite/Hello_World_Demo
echo "Compilation complete"

read -p "Press [Enter] key to compile hello world"
./dice -c helloworld.dice 2> temp.ll
lli temp.ll

read -p "Press [Enter] key to compile next example"
./dice -c edwardsnum.dice 2> temp.ll
lli temp.ll

read -p "Press [Enter] key to display all of shakespeare's Othello"
./dice -c shakespeare.dice 2> temp.ll
lli temp.ll

rm temp.ll
rm dice

echo ""
read -p "Press [Enter] key to show output from tester"
cd ..
./tester.sh -c
cd Hello_World_Demo
cd ../../Compiler
make clean 2>&1 > /dev/null
cd ../Test\ Suite/Hello_World_Demo

echo "Presentation done"