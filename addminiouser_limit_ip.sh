# /bin/bash
user=$1
passwd=$2
#mcli admin policy list myminio
mcli admin user remove myminio ${user}
mcli admin user add myminio ${user} ${passwd}
#mcli admin policy remove myminio mypolicyuser
#mcli admin policy add myminio mypolicyuser mypolicy_user.json
sleep 1
mcli admin policy set myminio mypolicy_data_limit_ip,mypolicy_write_limit_ip,mypolicy_cart_limit_ip user=${user}







