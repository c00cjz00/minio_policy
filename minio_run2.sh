  363  ls data/FlyEM/sourceData/am/|wc
  364  ls data/FlyEM/sourceData/nifti/|wc
  365  ls data/FlyCircuit/sourceData/
  366  ls data/FlyCircuit/
  367  ls data/FlyCircuit/sourceData/
  368  ls /fc2/minioData/data/Flycircuit/sourceData/
  369  ls /fc2/minioData/data/Flycircuit/sourceData/am/
  370  ls
  371  cd data/
  372  ls
  373  ls Flycircuit
  374  ls Flycircuit/sourceData/
  375  ls Flycircuit/sourceData/am/
  376  rm -rf Flycircuit
  377  ls
  378  cd FlyCircuit/
  379  ls
  380  cd sourceData/
  381  ls
  382  ls am/|wc
  383  cd ..
  384  ls
  385  cd code/
  386  cd /fc2/minioData/code/FlyEM/
  387  ls
  388  php cd /fc2/minioData/code/FlyCircuit/
  389  cd /fc2/minioData/code/FlyCircuit/
  390  ls
  391  rm *~
  392  cd ../
  393  cd ..
  394  ls
  395  cd data/FlyCircuit/sourceData/am/
  396  ls |wc
  397  top
  398  ls
  399  cd ..
  400  ls
  401  cd ..
  402  ls
  403  cd data/
  404  ls
  405  cd Fly
  406  cd FlyCircuit/
  407  ls
  408  cd ..
  409  ls
  410  mkdir processedData
  411  ls
  412  cd processedData
  413  ls
  414  ls /raid/
  415  ls /raid/FC2_img
  416  ls /raid/FC2_img10500
  417  ls /raid/FC2_img/10500
  418  cd /raid/
  419  ls
  420  ls FC2_img
  421  ls 0
  422  cd FC2_
  423  cd FC2_img/
  424  ls
  425  ls 9500
  426  ls
  427  ls -alt
  428  cat minio.sh 
  429  ls
  430  cd /fc2/minioData/
  431  ls
  432  cd code/
  433  ls
  434  cd flycircuit/
  435  ls
  436  cd ~
  437  ls
  438  cat > mypolicy_data.json << EOF
  439  {
  440    "Version":"2012-10-17",
  441    "Statement": [
  442      {
  443        "Sid": "AllowPublicRead",
  444        "Effect": "Allow",
  445        "Principal": {
  446          "AWS": "*"
  447        },
  448        "Action": [
  449          "s3:GetBucketLocation",          
  450          "s3:ListBucket",     
  451          "s3:GetObject",
  452          "s3:GetObjectVersion"
  453        ],
  454        "Resource": [
  455          "arn:aws:s3:::flycircuit/*",
  456          "arn:aws:s3:::FlyEM/*"
  457        ]
  458      }
  459    ]
  460  }
  461  EOF
  462  cat mypolicy_data.json
  463  mcli admin policy remove myminio mypolicy_data
  464  mcli admin policy list myminio
  465  mcli admin user remove myminio u0203126
  466  mcli admin policy remove myminio mypolicy_data
  467  mcli admin policy remove myminio mypolicyuser
  468  mcli admin policy remove myminio mypolicy_write
  469  mcli admin policy add myminio mypolicy_data mypolicy_data.json
  470  mcli admin policy add myminio mypolicy_write mypolicy_write.json
  471  ~/addminiouser.sh u0203126 12345678@
  472  ls
  473  cd /fc2/minioData/data/flycircuit/sourceData/
  474  ls
  475  ls -alt
  476  mkdir am
  477  mv * am/
  478  ls
  479  cd ..
  480  ls
  481  cd ..
  482  cd FlyEM/
  483  ls
  484  cd sourceData/
  485  ls nifti/
  486  ls
  487  rm -rf am/ n*
  488  ls
  489  rm -rf am/ n*
  490  ls am/
  491  ls nifti/
  492  ls nrrd/
  493  cd ..
  494  ls
  495  ls data/
  496  ls data/flycircuit/
  497  ls data/flycircuit/data/
  498  ls data/flycircuit/neuron/0/
  499  cd minioData/data/
  500  ls
  501  mv flycircuit/ FlyCircuit
  502  ls
  503  cd ..
  504  ls
  505  cd ~
  506  ls
  507  cat > mypolicy_data.json << EOF
  508  {
  509    "Version":"2012-10-17",
  510    "Statement": [
  511      {
  512        "Sid": "AllowPublicRead",
  513        "Effect": "Allow",
  514        "Principal": {
  515          "AWS": "*"
  516        },
  517        "Action": [
  518          "s3:GetBucketLocation",          
  519          "s3:ListBucket",     
  520          "s3:GetObject",
  521          "s3:GetObjectVersion"
  522        ],
  523        "Resource": [
  524          "arn:aws:s3:::FlyCircuit/*",
  525          "arn:aws:s3:::FlyEM/*"
  526        ]
  527      }
  528    ]
  529  }
  530  EOF
  531  mcli admin user remove myminio u0203126
  532  mcli admin policy remove myminio mypolicy_data
  533  mcli admin policy add myminio mypolicy_data mypolicy_data.json
  534  ~/addminiouser.sh u0203126 12345678@
  535  ls
  536  cd ..
  537  ls
  538  cd /fc2/minioData/data/FlyCircuit/sourceData/am/
  539  cd ..
  540  rm -rf am
  541  cd ..
  542  cd code/FlyCircuit/
  543  ls
  544  joe alias.php
  545  php alias.php
  546  joe alias.php
  547  php alias.php
  548  ls /fc2/minioData/data/Flycircuit/sourceData/am/Cha-F-200321_seg001.am
  549  php alias.php
  550  tmux a -t 0
  551  tmux a -t 1
  552  ls
  553  cd ..
  554  cd FlyCircuit/
  555  ls
  556  php alias_Images.php
  557  ls
  558  php alias_Movies.php
  559  ls /fc2/minioData/data/FlyCircuit/sourceData/Movies
  560  php alias_Movies.php
  561  rm -rf /fc2/minioData/data/FlyCircuit/sourceData/Movies/*
  562  cd /fc2/minioData/data/FlyCircuit/sourceData/
  563  ls
  564  rm -rf Movies/
  565  cd ..
  566  cd code/FlyCircuit/
  567  ls
  568  php alias_Movies.php 
  569  top
  570  exit
  571  ls
  572  cd ~
  573  ls
  574  cd /fc2
  575  ls
  576  cd minioData
  577  ls
  578  cd code/
  579  ls
  580  cd Fly
  581  cd FlyCircuit/
  582  ls
  583  php alias_Images.php
  584  ls
  585  php alias_SOMA.php
  586  cd //fc2/minioData/code/FlyCircuit
  587  ls
  588  php alias_warp.php
  589  ;s /fc2/processedData/FlyCircuit/Warping/FC2_warping/Gad1-F-101744/lenExt50/Gad1-F-101744_affine_seg001.am
  590  php alias_warp.php
  591  ls /fc2/processedData/FlyCircuit/Warping/FC2_warping/Gad1-F-201242/lenExt50/Gad1-F-201242_affine_warp2_seg001.am
  592  ls s/fc2/processedData/FlyCircuit/Warping/FC2_warping/Gad1-F-201242/lenExt50/Gad1-F-201242_affine_seg001.nii.gz
  593  ls /fc2/processedData/FlyCircuit/Warping/FC2_warping/Gad1-F-201242/lenExt50/Gad1-F-201242_affine_seg001.nii.gz
  594  ls /fc2/processedData/FlyCircuit/Warping/FC2_warping/Gad1-F-201242/lenExt50/Gad1-F-201242_affine_seg001.nii.gz 
  595  ls -alt /fc2/processedData/FlyCircuit/Warping/FC2_warping/Gad1-F-201242/lenExt50/Gad1-F-201242_affine_seg001.nii.gz
  596  tmux 
  597  rm -rf /fc2/minioData/data/FlyCircuit/sourceData/Warp_am/
  598  ls
  599  tmux a -t 0
  600  rm -rf /fc2/minioData/data/FlyCircuit/sourceData/Warp_am/
  601  tmux a -t 0
  602  rm -rf /fc2/minioData/data/FlyCircuit/sourceData/Warp_am/
  603  tmux a -t 0
  604  cd /fc2/
  605  ls
  606  cd minioData/p
  607  ls
  608  cd minioData/
  609  ls
  610  cd data/
  611  ls
  612  cd FlyCircuit/
  613  ls
  614  cd sourceData/
  615  ls
  616  mv am amiraMesh
  617  mv Warp_am/ amiraMesh_Warp
  618  ls
  619  ls amiraMesh_Warp/
  620  ㄎㄊ
  621  cd ..
  622  ls
  623  cd ..
  624  ls
  625  cd FlyCircuit/
  626  ls
  627  ㄎsds
  628  cd sourceData/
  629  ls
  630  ls Images/TH-M-100053*
  631  ls SOMA/TH-M-100053*
  632  ls
  633  ls Movies/TH-M-100053*
  634  cd SOMA/
  635  ls
  636  ls Images/TH-M-100053*
  637  ls TH-M-100053*
  638  rename.ul soma.txt
  639  rename.ul soma.txt neuron.soma.txt *
  640  ls
  641  cd ..
  642  cd 
  643  ls
  644  cd /fc2/data/
  645  ls
  646  cd FlyEM/
  647  ls
  648  cd v1.1
  649  ls
  650  cd data/
  651  ls
  652  cd ..
  653  ls
  654  cd output/
  655  ls
  656  ls /fc2/minioData/data/FlyEM/
  657  ls /fc2/minioData/data/FlyEM/sourceData/am/
  658  find /fc2/data/FlyEM/v1.1/output/images |grep LSM_1.png |grep F
  659  find /fc2/data/FlyEM/v1.1/output/images |grep LSM_1.png |grep '-F-'
  660  find /fc2/data/FlyEM/v1.1/output/images |grep LSM_1.png |grep '\-F\-'
  661  cd /fc2/minioData/code/
  662  ls
  663  cd FlyEM/
  664  ls
  665  php alias_Images.php 
  666  rm -rf /fc2/minioData/data/FlyEM/sourceData/Images
  667  php alias_Images.php 
  668  rm -rf /fc2/minioData/data/FlyEM/sourceData/Images
  669  php alias_Images.php 
  670  rm -rf /fc2/minioData/data/FlyEM/sourceData/Images
  671  php alias_Images.php 
  672  rm -rf /fc2/minioData/data/FlyEM/sourceData/Images
  673  php alias_Images.php 
  674  cd ..
  675  cd data/FlyEM/
  676  ls
  677  cd sourceData/
  678  ls
  679  mv am amiraMesh
  680  ls
  681  ls Images/
  682  cd ..
  683  ls
  684  cd sourceData/
  685  ls
  686  ls nrrd
  687  cd ..
  688  ls
  689  cd sourceData/
  690  ls
  691  cd Images/
  692  ls
  693  cd ..
  694  cd ../code/
  695  ls
  696  cd FlyEM/
  697  ls
  698  rm -rf /fc2/minioData/data/FlyEM/sourceData/Images
  699  ls
  700  php alias_Images.php 
  701  cd ..
  702  cd ../data/FlyEM/I
  703  cd ../data/FlyEM/sourceData/Images/
  704  ls
  705  cd ..
  706  cd ../code/
  707  ls
  708  cd FlyCircuit/
  709  ls
  710  cd ..
  711  ls
  712  cd minioData/code/FlyCircuit/
  713  ls
  714  cd ..
  715  cd data/FlyEM/
  716  ls
  717  cd v1.1
  718  ls
  719  cd output/
  720  ls
  721  cd ..
  722  ls
  723  cd data/
  724  ls
  725  cd ..
  726  ls
  727  cd data/
  728  ls
  729  cd VFB_00101567
  730  ls
  731  cd ..
  732  ls
  733  cd output/
  734  ls
  735  cd neuron/
  736  ls
  737  ls nifti/
  738  cd ..
  739  ls
  740  cd ..
  741  ls
  742  cd ..
  743  ls
  744  ls releaseData/
  745  ls releaseData/am/
  746  s
  747  ls
  748  ls releaseData/n
  749  ls releaseData/nii/
  750  cd ..
  751  ls
  752  cd FlyEM/
  753  ls
  754  cd v1.1/nue
  755  cd v1.1
  756  ls
  757  cd data/
  758  ls
  759  cd VFB_00101384/
  760  ls
  761  cd ..
  762  ls
  763  cd ..
  764  ls
  765  ls output/
  766  cd ..
  767  ls
  768  cd /backup/
  769  ls
  770  cd FlyEM/
  771  ls
  772  cd ..
  773  ls
  774  df
  775  cd /raid/
  776  ls
  777  cd FlyEM/
  778  ls
  779  cd v1.1/
  780  ls
  781  cd output/
  782  ls
  783  ls /fc2/data/FlyEM/v1.1/output/
  784  ls
  785  ls neuron/
  786  ls neuron/am/
  787  ls
  788  ls soma
  789  ls
  790  cd /fc2/minioData/
  791  ls
  792  cd ..
  793  cd data/
  794  ls
  795  cd FlyCircuit/
  796  ls
  797  cd ..
  798  ls
  799  cd FlyEM
  800  ls
  801  cd ..
  802  ls
  803  ls processedData/
  804  ls processedData/FlyCircuit/
  805  cd minioData/data/FlyEM/
  806  mkdir processedData
  807  cd processedData/
  808  pwd
  809  ls /fc2/data/FlyEM/v1.1/output/neuronTransform/warping_level4
  810  ls /fc2/data/FlyEM/v1.1/
  811  ls
  812  cat FlyEM_to_VFB.csv
  813  ls
  814  cd ..
  815  ls
  816  cd ..
  817  ls
  818  cd data/
  819  ls
  820  cd FlyEM
  821  ls
  822  cd v1.1
  823  ls
  824  cat link.php 
  825  ls
  826  cd ..
  827  cd minioData/
  828  ls
  829  cd code/
  830  ls
  831  cd FlyEM/
  832  ls
  833  php alias_Warp.php
  834  cd ..
  835  cd data/
  836  ls
  837  cd FlyEM/
  838  ls
  839  cd processedData/
  840  ls
  841  cd amiraMesh_warp/
  842  cd ..
  843  cd FlyCircuit/sourceData/
  844  ls
  845  cd ..
  846  cd Flye
  847  cd FlyEM/
  848  ls
  849  cd sourceData/
  850  ls
  851  cd ../processedData/
  852  ls
  853  mv amiraMesh_warp/ amiraMesh_Warp/
  854  cd amiraMesh_Warp/
  855  ls
  856  ls -alt
  857  ls
  858  cd ..
  859  cd code/
  860  ls
  861  cd FlyEM/
  862  ls
  863  php alias_nifti_Warp.php
  864  cd ..
  865  cd data/
  866  ls
  867  cd FlyEM/
  868  ls
  869  cd processedData/
  870  ls
  871  cd nifti_Warp/
  872  ls
  873  cd ..
  874  ls
  875  cd /fc2
  876  ls
  877  cd minioData/
  878  ls
  879  cd data/
  880  ls
  881  cd FlyCircuit/
  882  ls
  883  mkdir processedData
  884  cd sourceData/
  885  ls
  886  mv amiraMesh_Warp ../processedData/
  887  ls
  888  cd Images/
  889  ls
  890  cd ../
  891  cd amiraMesh/i
  892  ls
  893  cd amiraMesh/
  894  ls
  895  ls V*
  896  ls
  897  ls -alt
  898  cd ..
  899  ls
  900  cd Images/
  901  ls -alt VGlut-Fa-802771*
  902  ls
  903  cd ..
  904  ls
  905  ls SOMA/
  906  rename.ul '.neuron' '_seg001' * 
  907  ls
  908  cd SOMA
  909  rename.ul '.neuron' '_seg001' * 
  910  ls
  911  c d..
  912  ls
  913  cd ..
  914  ls
  915  cd Movies/
  916  ls
  917  ls VG*
  918  cd ..
  919  ls
  920  cd Images/
  921  ls VG*
  922  ls
  923  rename.ul '.neuron' '_seg001' * 
  924  rename.ul '.neuron' '_seg001' *neuron.png
  925  rename.ul '.neuron' '_seg001' *Fa-*neuron.png
  926  rename.ul '.neuron' '_seg001' *F-*neuron.png
  927  rename.ul '.neuron' '_seg001' *M-*neuron.png
  928  ls
  929  ls |grep -v lsm |grep -v sef
  930  ls |grep -v lsm |grep -v seg
  931  ls
  932  cd ..
  933  ls
  934  cd Movies/
  935  ls
  936  cd ..
  937  ls
  938  cd SOMA/
  939  ls
  940  cd ..
  941  ls
  942  cd amiraMesh/
  943  ls
  944  cd ..
  945  ls
  946  cd processedData/
  947  ls
  948  cd amiraMesh_Warp/
  949  ls
  950  rename.ul '.neuron' '_seg001' *M-*neuron*
  951  rename.ul '.neuron' '_seg001' *F-*neuron*
  952  rename.ul '.neuron' '_seg001' *Fa-*neuron*
  953  rename.ul '.neuron' '_seg001' *F-*neuron.war*
  954  rename.ul '.neuron' '_seg001' *F-*neuron.lin*
  955  ls
  956  cd ..
  957  mkdir nifti_Linear
  958  cd amiraMesh_Warp/
  959  mv *gz ../nifti_Linear/
  960  mv *F-*gz ../nifti_Linear/
  961  mv *M-*gz ../nifti_Linear/
  962  ls
  963  ls |grep lin
  964  cd ../nifti_Linear/
  965  ls
  966  cd ..
  967  ls
  968  cd ..
  969  cd code/
  970  ls
  971  ㄎ
  972  cd FlyCircuit/
  973  ls
  974  php alias_nifti_Warp.php
  975  cd cd ..
  976  cd ../
  977  cd ..
  978  ls
  979  cd data/
  980  ls
  981  cd FlyCircuit/
  982  ls
  983  mv sourceData/nifti_Warp/ processedData/
  984  cd ..
  985  cd ../code/FlyEM/
  986  php alias_SOMA.php 
  987  cd ..
  988  exit
  989  cd ..
  990  rm -rf SOMA/
  991  cd ..
  992  cd code/
  993  ls
  994  cd FlyCircuit/
  995  ls
  996  php alias_SOMA.
  997  php alias_SOMA.php 
  998  rm -rf ../../data/FlyCircuit/sourceData/SOMA/
  999  php alias_SOMA.php 
 1000  cd ..
 1001  cd FlyCircuit/
 1002  php alias_SOMA.php 
 1003  cd  ../../data/FlyCircuit/sourceData/
 1004  ls
 1005  rm -rf SOMA/
 1006  cd /fc2/minioData/code/FlyCircuit
 1007  php alias_SOMA.php 
 1008  df
 1009  cd /raid/2020script/initialStep_flyem/
 1010  ls
 1011  ls step01-imageMaker
 1012  step01-imageMaker
 1013  cd step01-imageMaker
 1014  ls
 1015  diff 01-snapshot_LSM.php ../../initialStep/step01-imageMaker/01-snapshot_LSM.php 
 1016  ls
 1017  grep 3875 *php
 1018  joe 01-snapshot_LSM.php
 1019  ls
 1020  joe 00-runAll_FlyEM.php
 1021  ls demo
 1022  ls demo|wc
 1023  ls demo/VFB-F-924002286
 1024  joe 00-runAll_FlyEM.php
 1025  joe 01-snapshot_LSM.php
 1026  ls
 1027  ls /raid//FlyEM/v1.1/code/step01-imageMaker
 1028  ls /raid//FlyEM/v1.1/code/step01-imageMaker|wc
 1029  pwd
 1030  cd ..
 1031  ls
 1032  cd ..
 1033  cd /fc2/data/FlyEM/v1.1/code/
 1034  ls
 1035  ls |wc
 1036  cd step01-imageMaker/
 1037  ls
 1038  ls -alt
 1039  joe 00-runAll_FlyEM.php
 1040  joe 01-snapshot_LSM.php
 1041  joe functionFolder/snapshot_LSM.hx
 1042  ls
 1043  cp /raid/2020script/neuronList/list_all.txt FC3.0.txt
 1044  ls
 1045  cp /raid/2020script/neuronList/list_noFa_v1.txt FC2.0.txt
 1046  cp /raid/2020script/neuronList/list_FC1.txt FC1.0.txt
 1047  ls
 1048  cat FC1.0.txt |wc
 1049  cat FC2.0.txt |wc
 1050  cat FC3.0.txt |wc
 1051  cd ..
 1052  cd FlyEM/
 1053  ls
 1054  cd ../FlyCircuit/
 1055  ls
 1056  mv sourceData/*txt .
 1057  ls
 1058  cd ..
 1059  ls
 1060  cd FlyEM/
 1061  ls
 1062  cp /raid/2020script/neuronList/FlyEM.txt .
 1063  ls
 1064  cat FlyEM.txt 
 1065  exit
 1066  ls
 1067  cd ..
 1068  ls
 1069  cat FC1.0.txt
 1070  replace /raid/FC2/data/ '' -- FC1.0.txt 
 1071  ls
 1072  cat FC2.0.txt 
 1073  replace /raid/FC2/data/ '' -- FC2.0.txt 
 1074  replace /raid/FC2/data/ '' -- FC3.0.txt 
 1075  ls
 1076  cat FC3.0.txt 
 1077  ls
 1078  replace am '' -- *txt
 1079  ls
 1080  cat FC3.0.txt
 1081  replace am 'seg001.' 'seg001' -- *txt
 1082  replace  'seg001.' 'seg001' -- *txt
 1083  ls
 1084  cat FC2.0.txt
 1085  ls
 1086  cd ..
 1087  cd FlyEM/
 1088  ls
 1089  cat FlyEM.txt 
 1090  ls
 1091  ls sourceData/amiraMesh/
 1092  ls
 1093  ls FlyEM.txt 
 1094  cat FlyEM.txt 
 1095  ls
 1096  cd ..
 1097  ls
 1098  cd code/
 1099  ls
 1100  cd FlyEM/
 1101  ls
 1102  cat alias_sourceData.php
 1103  ls /fc2/data/FlyEM/releaseData/nii
 1104  "find /fc2/data/FlyEM/releaseData/nrrd
 1105  "find /fc2/data/FlyEM/releaseData/nrrd"
 1106  ls /fc2/data/FlyEM/releaseData/nrrd"
 1107  ls /fc2/data/FlyEM/releaseData/nrrd
 1108  ls /fc2/data/FlyEM
 1109  ls /fc2/data/FlyEM/v1.1/output/neuron
 1110  ls /fc2/data/FlyEM/v1.1/output/neuronam
 1111  ls /fc2/data/FlyEM/v1.1/output/neuron/am
 1112  cd ..
 1113  cd  /fc2/data/FlyEM/v1.1/output/neuron
 1114  ls
 1115  ls nifti
 1116  cd ..
 1117  ls
 1118  cd ..
 1119  ls
 1120  cd v1.1
 1121  ls
 1122  ls data/
 1123  ls data/VFB_00101567
 1124  ls /fc2/data/FlyEM/v1.1/data/VFB_00101384/
 1125  cd output/am
 1126  ls
 1127  cd ..
 1128  ls /fc2/minioData/data/FlyEM/sourceData/
 1129  ls /fc2/minioData/data/FlyEM/sourceData/amiraMesh
 1130  ls -alt /fc2/minioData/data/FlyEM/sourceData/amiraMesh
 1131  ls
 1132  cd /fc2/minioData/data/FlyEM/sourceData
 1133  ls
 1134  rm -rf amiraMesh  nifti  nrrd
 1135  cd ..
 1136  cd code/
 1137  ls
 1138  cd FlyEM/
 1139  ls
 1140  php alias_sourceData.php
 1141  ls
 1142  find /fc2/data/FlyEM/v1.1/data/VFB_00101384
 1143  ls /fc2/data/FlyEM/v1.1/output/neuron/nifti
 1144  php alias_sourceData.php
 1145  ls /fc2/minioData/data/FlyEM/sourceData/nifti/FlyEM-F-1110221199.nii.gz
 1146  ls /fc2/data/FlyEM/v1.1/output/neuron/nifti/jrdh-E-1110221199_seg001.nii.gz
 1147  rm -rf /fc2/minioData/data/FlyEM/sourceData/amiraMesh/
 1148  rm -rf /fc2/minioData/data/FlyEM/sourceData/n*
 1149  php alias_sourceData.php
 1150  cd ..
 1151  ls
 1152  cd data/
 1153  ls
 1154  cd FlyEM/
 1155  ls
 1156  cd sourceData/
 1157  ls
 1158  ls Images/
 1159  rm -rf Images/
 1160  cd ..
 1161  cd ../code/
 1162  ls
 1163  cd FlyEM/
 1164  ls
 1165  php alias_Images.php
 1166  cd /fc2/minioData/code/
 1167  ls
 1168  cd FlyEM/
 1169  ls
 1170  rm -rf ../../data/FlyEM/sourceData/SOMA/
 1171  ls
 1172  php alias_SOMA.php
 1173  rm -rf ../../data/FlyEM/sourceData/nrrd//FlyEM-F-5813008796*
 1174  cd ../../data/FlyEM/sourceData/
 1175  ls
 1176  rm-rf  amiraMesh  nifti  nrrd
 1177  rm -rf  amiraMesh  nifti  nrrd
 1178  cd ..
 1179  cd ../code/
 1180  ls
 1181  cd FlyEM/
 1182  ls
 1183  php alias_sourceData.php; php alias_amiraMesh_Warp.php; php alias_nifti_Warp.php ;
 1184  cd /fc2/minioData/code/
 1185  cd FlyEM/
 1186  ls
 1187  php alias_Skeleton.php
 1188  php alias_Skeleton_Warp.php 
 1189  ls
 1190  cd ..
 1191  ls
 1192  cd data/
 1193  ls
 1194  cd FlyEM/
 1195  ls
 1196  cd processedData/
 1197  ls
 1198  mv Skeleton Skeleton_Warp
 1199  ls
 1200  cd ..
 1201  ls
 1202  cd ..
 1203  cd FlyCircuit/
 1204  ls
 1205  cd ../FlyEM/
 1206  ls
 1207  cat FlyEM.txt |wc
 1208  ls sourceData/amiraMesh/|wc
 1209  ls sourceData/amiraMesh/|grep seg |wc
 1210  ls sourceData/amiraMesh/ |grep seg
 1211  ls sourceData/amiraMesh/ |grep seg > FlyEM.txt 
 1212  replace '.am' '' -- FlyEM.txt 
 1213  ls
 1214  cat FlyEM.txt 
 1215  cd ..
 1216  ls
 1217  cd FlyCircuit/ls
 1218  cd FlyCircuit/
 1219  ls
 1220  ls sourceData/
 1221  cd ..
 1222  ls FlyCircuit/sourceData/
 1223  ls FlyEM/sourceData/
 1224  cd ..
 1225  ls
 1226  cd data/
 1227  ls
 1228  cd FlyCircuit/
 1229  ls
 1230  cd ..
 1231  ls
 1232  ls FlyCircuit/
 1233  cd ..
 1234  ls
 1235  cd minioData/code/FlyCircuit/
 1236  ls
 1237  php alias_afffineRegistration_matrix.php
 1238  cd  /fc2/minioData/data/FlyCircuit/sourceData/afffineRegistration_matrix
 1239  ls |wc
 1240  cd ~
 1241  ls
 1242  cat minio_run.sh
 1243  export MINIO_ROOT_USER=c00cjz00
 1244  export MINIO_ROOT_PASSWORD=12345678@
 1245  export MINIO_REGION=us-east-1
 1246  exit
 1247  df
 1248  cd ~
 1249  tmux a -t 0
 1250  tmux a -t 1
 1251  tmux a -t 3
 1252  tmux a -t 4
 1253  exit
 1254  cd ~
 1255  tmux a -t 0
 1256  tmux a -t 1
 1257  ps -ef |grep min
 1258  fusermount -uz /home/minio/mount/flycircuit
 1259  fusermount -uz /home/minio/mount/output
 1260  ls /fc2/minioData/data/
 1261  ls -alt /fc2/minioData/data/
 1262  mkdir /fc2/minioData/data/DataCarts
 1263  exit
 1264  cd  /fc2/minioData/
 1265  ls
 1266  cd code/
 1267  ls
 1268  mv /fc2/minioData/data/DataCarts /fc2/minioData/data/DataCart
 1269  mkdir DataCart
 1270  exit
 1271  history 
 1272  cd /fc2/minioData/data/DataCart
 1273  ls
 1274  pwd
 1275  ls
 1276  cp ../../data/FlyCircuit/processedData/amiraMesh_Warp/npf-F-300001_seg001.warp.am .
 1277  ls -alt
 1278  rm npf-F-300001_seg001.warp.am
 1279  ln -s ../../data/FlyCircuit/processedData/amiraMesh_Warp/npf-F-300001_seg001.warp.am .
 1280  ls -alt
 1281  rm npf-F-300001_seg001.warp.am 
 1282  ln -s /fc2/minioData/data/FlyCircuit/processedData/amiraMesh_Warp/npf-F-300001_seg001.warp.am .
 1283  ls
 1284  ls -alt
 1285  ls
 1286  cd ..
 1287  ls
 1288  ㄎ
 1289  ls
 1290  cd ..
 1291  ls
 1292  cd ~
 1293  ls
 1294  cat minio.sh 
 1295  cat minio_run.sh 
 1296  ls /fc2/minioData/data/
 1297  ps -ef |grep minio
 1298  kill -9 4173
 1299  minio server /fc2/minioData/data/ --address 0.0.0.0:19001 --console-address 0.0.0.0:19002
 1300  tmux a -t 5
 1301  tmux a -t 4
 1302  tmux a -t 3
 1303  tmux a -t 2
 1304  tmux a -t 1
 1305  tmux
 1306  ps -ef |grep minio
 1307  history 
 1308  export MINIO_ROOT_USER=c00cjz00
 1309  ls
 1310  cat minio_run.sh 
 1311  ls
 1312  export MINIO_ROOT_PASSWORD=12345678@
 1313  export MINIO_REGION=us-east-1
 1314  ls
 1315  tmux
 1316  joe minio_start.sh
 1317  tmux 
 1318  ls  /fc2/minioData/data/ -
 1319  ls  /fc2/minioData/data/
 1320  ls
 1321  joe addminiouser.sh
 1322  ls
 1323  joe mypolicy_data.json
 1324  ls
 1325  cp mypolicy_data.json mypolicy_cart.json
 1326  joe mypolicy_cart.json
 1327  ls
 1328  history |grep mc
 1329  history |grep add
 1330  cat ~/addminiouser.sh
 1331  joe ~/addminiouser.sh
 1332  history |grep add
 1333  history |grep ln
 1334  ls /fc2/minioData/data/FlyCircuit/processedData/amiraMesh_Warp/104198-F-000000_seg001.warp.am
 1335  ls /fc2/minioData/data/FlyCircuit/processedData/nifti_Warp/104198-F-000000_seg001.warp.nii.gz
 1336  ls /fc2/minioData/data/FlyCircuit/processedData/nifti_Linear/104198-F-000000_seg001.linear.nii.gz
 1337  cd /fc2/minioData/data/DataCart/
 1338  ls
 1339  rm npf-F-300001_seg001.warp.am 
 1340  cd ~
 1341  ls
 1342  rm *~
 1343  ls
 1344  ls data/
 1345  ls
 1346  cat addminiouser.sh
 1347  ls
 1348  cat addminiouser.sh
 1349  cat mypolicy_cart.json
 1350  ls
 1351  joe mypolicy_cart.json
 1352  ls
 1353  cp mypolicy_cart.json mypolicy_cart_limit_ip.json
 1354  joe mypolicy_cart_limit_ip.json
 1355  ls
 1356  cp mypolicy_data.json mypolicy_data_limit_ip.json
 1357  cp mypolicy_write.json mypolicy_write_limit_ip.json
 1358  joe mypolicy_write_limit_ip.json 
 1359  joe mypolicy_data_limit_ip.json 
 1360  ls
 1361  cat minio_run.sh
 1362  history > minio_run2.sh
