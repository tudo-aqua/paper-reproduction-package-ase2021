java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../appscan/ -r appscan
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../banditfuzz/ -r banditfuzz -e smt
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../cashewsuite/ -r cashew
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../SV-COMP/ -r sv-comp
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../joacosuite/ -r joaco
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../Kaluza/ -r kaluza
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../kauslersuite/ -r kausler
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../Leetcode/ -r leetcode
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../light/ -r light
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../nornbenchmarks/ -r norn
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../pisa/ -r pisa
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../slothtests/ -r sloth
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../strangersuite/ -r stranger
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../stringfuzz/ -r stringfuzz -e smt25 
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../woorpje/ -r woorpje -e smt
java -Xmx120G -Xss1g -cp ./string-experiment-1.0-SNAPSHOT-all.jar tools.OperationsCounter -f ../z3_regression/ -r z3_regression
./run-pyex.sh
