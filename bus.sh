# 公交车到站的剩余时间
time=`curl http://www.bjbus.com/api/api_line_rtime.php\?uuid\=5455742232316050482\&station\=15 2>&1|grep -E "busTime\":\d+" -o|awk -F":" '{print $2"mins"}'`
echo $time
