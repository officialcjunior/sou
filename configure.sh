#! /bin/sh

FILE="sou.conf"

echo -e "I am a wizard to set up sou.\n"
echo -e "Enter the URL of your Mastodon instance. \
	 Enter 'masotodon.social', if you're from over there.\n ->"
read url
cat <<EOF >> $FILE
sed -i -e '$a\' $FILE #creates a newline at sou.conf
url="`echo "https://$url/api/v1/statuses"`"
EOF
echo -e "Okay, that's done.\n Just go your Settings \
	on Mastodon -> Development -> New Application \
	-> And get that token. \n Paste that token in \
	sou.conf. And you're done!"
