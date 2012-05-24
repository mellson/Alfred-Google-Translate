Alfred-Google-Translate
=======================

Extension for Alfred that will do a Google translate for you and output the result via Growl.
This extension doesn't use the Google API calls, so it's free to use.

To use it in Alfred the default shortcut is 't' followed by the languages and the text you would like to translate.

You can see the language codes that Google understands here:
https://developers.google.com/translate/v2/using_rest#language-params

If you don't input correct language codes you will get funny results.

#Example
If I wan't to translate from English to Danish I would type:

t en da How awesome is Alfred?

#Shell Script
I've included the shell script if you would like to translate from the terminal.

Options to get this to work, either:
Move the shell script to somewhere on your PATH.

or

Add a symlink to where you have the repository.
I'n my case this looks like this:
<code>
ln -s /Users/anbh/Desktop/Git/Alfred-Google-Translate/translate.sh /usr/local/bin/translate
</code>

Hope you enjoy!

Best regards
Anders