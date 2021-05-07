quotes_dir = content/quotes.md

new:
ifdef postname
	hugo new posts/$(postname).md
endif

quote:
	echo "***" >> $(quotes_dir)
ifdef quote
	echo "> $(quote)" >> $(quotes_dir)
ifdef cite
ifdef link
	echo ">" >> $(quotes_dir)
	echo "> -- <cite><a href=\"$(link)\" target=\"_blank\">$(cite)</a></cite>" >> $(quotes_dir)
else
	echo ">" >> $(quotes_dir)
	echo "> -- <cite>$(cite)</cite>" >> $(quotes_dir)
endif
endif
endif

# TODO: Add what i read, what i watch 
