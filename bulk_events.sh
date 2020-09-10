touch stripe.log
for tbl in $(cat events_mapping.txt) 
do
    IFS='|'
    read -ra MAP <<< "$tbl"
    echo "Starting ${MAP[1]}"
    echo -e '\n' | stripe listen  --events "${MAP[0]}"  --forward-to ${MAP[1]} 1>>stripe.log 2>>stripe.log &

done


read  -n 1 -p "Click any key to stop"
killall 'stripe'


