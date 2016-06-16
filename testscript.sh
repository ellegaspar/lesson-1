rm -r test
mkdir test
cd test
mkdir aaa ccc
cd aaa
echo "aaabbbccc" >aaa
mkdir bbb
cd bbb
echo "aaabbbccc" >bbb
cd ../../ccc
echo "aaabbbccc" >ccc
find test/ type -f -print0|xarg -0 sed -i  "s/aaa/testtest/g" 
echo "test successfully finished"
 
