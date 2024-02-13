#!/bin/sh

check_result() {
 RESULT=$1
 if [ $RESULT -ne 255 ] ; then
  exit $RESULT
 fi	
}
/usr/bin/mvn clean compile exec:java
check_result $?
/usr/bin/mvn clean package -DskipTests
check_result $?