#!/bin/sh

PATH_PROG=.
PATH_PROG=target
PATH_LOG=$PATH_PROG/log

DIR_BASE_OLD=~/devel/Projekt/028_smartIs/prjSmart/31_keycloak/master/14/docker/themes
DIR_BASE_NEW=~/devel/Projekt/028_smartIs/prjSmart/31_keycloak/development.v19/themes
DIR_BASE_v14=~/devel/Projekt/028_smartIs/prjSmart/31_keycloak/keycloak-14.0.0/themes

LOG_CONF=$PATH_PROG/properties/logging.properties

VMparam="-Xms256m -Xmx256m"
#VMparam="-Djava.util.logging.config.file=$LOG_CONF $VMparam"
#VMparam="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=6106 $VMparam"

#java $VMparam -jar $PATH_PROG/bPropCompare.jar -v

#java $VMparam -DPropFile1=$DIR_BASE_OLD/base/account/messages/messages_en.properties -DPropFile2=$DIR_BASE_NEW/smartis/account/messages/messages_en.properties -jar $PATH_PROG/bPropCompare.jar
#java $VMparam -DPropFile1=$DIR_BASE_NEW/smartis/account/messages/messages_en.properties -DPropFile2=$DIR_BASE_OLD/base/account/messages/messages_en.properties -jar $PATH_PROG/bPropCompare.jar

#java $VMparam -DPropFile1=$DIR_BASE_v14/base/admin/messages/admin-messages_en.properties -DPropFile2=$DIR_BASE_NEW/smartis/admin/messages/admin-messages_en.properties -jar $PATH_PROG/bPropCompare.jar
#java $VMparam -DPropFile1=$DIR_BASE_NEW/smartis/admin/messages/admin-messages_en.properties -DPropFile2=$DIR_BASE_v14/base/admin/messages/admin-messages_en.properties -jar $PATH_PROG/bPropCompare.jar

#java $VMparam -DPropFile1=$DIR_BASE_v14/base/admin/messages/messages_en.properties -DPropFile2=$DIR_BASE_NEW/smartis/admin/messages/messages_en.properties -jar $PATH_PROG/bPropCompare.jar
#java $VMparam -DPropFile1=$DIR_BASE_NEW/smartis/admin/messages/messages_en.properties -DPropFile2=$DIR_BASE_v14/base/admin/messages/messages_en.properties -jar $PATH_PROG/bPropCompare.jar

#java $VMparam -DPropFile1=$DIR_BASE_v14/base/email/messages/messages_en.properties -DPropFile2=$DIR_BASE_NEW/smartis/email/messages/messages_en.properties -jar $PATH_PROG/bPropCompare.jar
#java $VMparam -DPropFile1=$DIR_BASE_NEW/smartis/email/messages/messages_en.properties -DPropFile2=$DIR_BASE_v14/base/email/messages/messages_en.properties -jar $PATH_PROG/bPropCompare.jar

java $VMparam -DPropFile1=$DIR_BASE_OLD/base/login/messages/messages_en.properties -DPropFile2=$DIR_BASE_NEW/smartis/login/messages/messages_en.properties -jar $PATH_PROG/bPropCompare.jar
java $VMparam -DPropFile1=$DIR_BASE_NEW/smartis/login/messages/messages_en.properties -DPropFile2=$DIR_BASE_OLD/base/login/messages/messages_en.properties -jar $PATH_PROG/bPropCompare.jar

echo That_s it.

exit 0
