#!/bin/bash
#This script wil email us our user, iP hostname and today's date.
emailaddress=olleyca@mail.uc.edu
today=
ip=
content="USER $USER"
mail -s "IT3038C Linux IP" $emailaddress <<< $(echo -e $content) 


