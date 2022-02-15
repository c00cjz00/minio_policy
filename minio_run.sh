    1  pwd
    2  ls
    3  cd ~
    4  ls
    5  pwd
    6  ls
    7  exit
    8  bash
    9  exit
   10  ls
   11  cd ~
   12  joe minio.sh
   13  ls
   14  cat minio.sh 
   15  cd /fc2/data/
   16  ls
   17  cd flycircuit/
   18  ls
   19  cd ..
   20  ls
   21  cd ..
   22  ls
   23  rm mcli_20220129010327.0.0_amd64.deb 
   24  ls
   25  cd data/
   26  ls
   27  cd ..
   28  ls
   29  mkdir minioData
   30  cd minioData/
   31  ls
   32  ls -alt
   33  cd ..
   34  ls
   35  sudo su
   36  exit
   37  cd ~
   38  export MINIO_ROOT_USER=c00cjz00
   39  export MINIO_ROOT_PASSWORD=12345678@
   40  export MINIO_REGION=us-east-1
   41  minio server /fc2/minioData/data/ --address ":19001" --console-address ":19002"
   42  minio server /fc2/minioData/data/ --address "0.0.0.0:19001" --console-address "0.0.0.0:19002"
   43  ls
   44  joe mypolicy_user.json 
   45  cp mypolicy_user.json mypolicy_data.json
   46  joe mypolicy_data.json
   47  ls
   48  joe mypolicy_data.json
   49  ls
   50  joe addminiouser.sh 
   51  minio server /fc2/minioData/data/ --address "0.0.0.0:19001" --console-address "0.0.0.0:19002"
   52  env
   53  minio server /fc2/minioData/data/ --address "0.0.0.0:19001" --console-address "0.0.0.0:19002"
   54  echo $RootPass
   55  echo $RootUser
   56  history 
   57  pwd
   58  history > ~/minio_run.sh 
