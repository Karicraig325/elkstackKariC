#!/bin/bash

find $1_Dealer_schedule | grep $2 $1_Dealer_schedule | grep $3 | awk -o" " '{print $5, $6}'

