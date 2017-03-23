#ONLY LINE THAT NEEDS TO BE CHANGED FOR SCRIPTING
#PLEASE CHANGE STATE ABBREVIATION TO CURRENT STATE WHOSE DATA IS BEING USED

state=oh

end_of_file=2010_t_headers.csv

name_of_this_file=$0

for file in *; do
        if [ file!=$0 ]; then
                #changing the header file name to match the data file name for each state table
                table_value=`echo $file | cut -d \_ -f1`
		#echo $table_value
		#echo $state"_"$table_value"_"$end_of_file".csv"
                mv $file $state"_"$table_value"_"$end_of_file".csv"
        fi
done

