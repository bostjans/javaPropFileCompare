#!/bin/sh

PATH_PROG=.
PATH_PROG=target
PATH_LOG=$PATH_PROG/log

DIR_BASE_OLD=./dirSourceOld
DIR_BASE_NEW=./dirSourceNew

LOG_CONF=$PATH_PROG/properties/logging.properties

VMparam="-Xms256m -Xmx256m"
#VMparam="-Djava.util.logging.config.file=$LOG_CONF $VMparam"
#VMparam="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=6106 $VMparam"

#java $VMparam -jar $PATH_PROG/bPropCompare.jar -v

#java $VMparam -DPropFile1=$DIR_BASE_OLD/base/account/messages/messages_en.properties -DPropFile2=$DIR_BASE_NEW/smartis/account/messages/messages_en.properties -jar $PATH_PROG/bPropCompare.jar
#java $VMparam -DPropFile1=$DIR_BASE_NEW/smartis/account/messages/messages_en.properties -DPropFile2=$DIR_BASE_OLD/base/account/messages/messages_en.properties -jar $PATH_PROG/bPropCompare.jar

echo That_s it.

exit 0
