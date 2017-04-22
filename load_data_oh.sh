hdfs dfs -mkdir oh_d4d
for i in p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p12a p12b p12d p12e p12f p12g p12h p12i p13 p13a p13b p13d p13e p13f p13g p13h p13i p14 p35 p36 p37a p37b p37d p37e p37f p37g p37h p37i p44 p45 p46 p47 p48 p49; do hdfs dfs -mkdir oh_d4d/$i ; done
for i in p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p12a p12b p12d p12e p12f p12g p12h p12i p13 p13a p13b p13d p13e p13f p13g p13h p13i p14 p35 p36 p37a p37b p37d p37e p37f p37g p37h p37i p44 p45 p46 p47 p48 p49; do hdfs dfs -put oh_$i\_2010.txt tn_d4d/$i ; done
