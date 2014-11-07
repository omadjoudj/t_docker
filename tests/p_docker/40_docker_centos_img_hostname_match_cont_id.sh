#!/bin/sh
# Author: Athmane Madjoudj <athmane@fedoraproject.org>

t_Log "Running $0 - Check if hostname inside CentOS image matches container id"


hostname_output="`docker run centos hostname`"

docker ps -a | grep -q "$hostname_output"

t_CheckExitStatus $?

