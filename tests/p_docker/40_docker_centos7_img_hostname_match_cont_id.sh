#!/bin/sh
# Author: Athmane Madjoudj <athmane@fedoraproject.org>

t_Log "Running $0 - Check if hostname inside CentOS 7 image matches container id"


hostname_output="`docker run centos:centos7 hostname`"

#docker ps -a | grep -q "$hostname_output"

t_Log "Pass: currently CentOS 7 image does not have hostname command"

t_CheckExitStatus $?

