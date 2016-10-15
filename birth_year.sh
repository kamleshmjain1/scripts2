current_year=$(date +%Y)
read -p "Please Enter your birth year :" birth_year
if [[ -z $birth_year ]]
then
   echo "Invalid input [Blank Input]"
   exit 1
elif [[ ! $birth_year =~ [0-9]{4} ]]
  then
    echo "Invalid input"
    exit 1
elif (( birth_year > current_year ))
 then
   echo "Invalid input"
   exit 1
fi

age=$(( current_year - birth_year ))
echo "Your age is $age"
