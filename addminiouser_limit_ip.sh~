# /bin/bash
user=$1
passwd=$2
#mcli admin policy list myminio
mcli admin user remove myminio ${user}
mcli admin user add myminio ${user} ${passwd}
#mcli admin policy remove myminio mypolicyuser
#mcli admin policy add myminio mypolicyuser mypolicy_user.json
sleep 1
mcli admin policy set myminio mypolicy_data,mypolicy_write,mypolicy_cart user=${user}







