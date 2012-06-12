Alfred-Google-Translate
=======================
#Installation
Download the extensions here http://d.pr/rMIx
There are two extensions, a normal translation extension and a standard language version (Both described below).
Choose to install one or both.

#Description
Extensions for Alfred that will do a Google translate for you and output the result via Growl and place a copy in your clipboard.
This extension doesn't use the Google API calls, so it's free to use.

#Usage - Normal Version
To use it in Alfred the default shortcut is 't' followed by the languages and the text you would like to translate.

You can see the language codes that Google understands here:
https://developers.google.com/translate/v2/using_rest#language-params

If you don't input correct language codes you will get funny results.

If I wan't to translate from English to Danish I would type:

<code>
t en da How awesome is Alfred?
</code>

#Usage - Standard Language Version
I've also encluded an extension which you can use for doing translations easier between standard languages.
Install the extension and set your default languages at the top of the script.

Now you only have to type:

<code>
tt How awesome is Alfred?
</code>

To convert between your standard languages.

This makes it easy to also setup up a hotkey for translating selected text in Mac OS X.

Goto to Alfred settings -> Hotkeys
Add Extensions -> Shell Script
Select the Google Translator Standard Language extension
Check the argument box for selected text in OS X
Set your hotkey and you are done.

Now you can select any text in OS X, press your hotkey and have your translation presented via Growl.

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