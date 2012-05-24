#!/bin/bash

QUERY=$*

# Split Alfred query into parts:
SOURCE_LANGUAGE=`echo "$QUERY" | awk '{ print $1; }' `
DESTINATION_LANGUAGE=`echo "$QUERY"| awk '{ print $2; }' `

# Transform the text to something Google translate understands
set +o histexpand

TEXT_TO_TRANSLATE=$(echo "$QUERY"|sed 's/ /+/g'|sed 's/'$SOURCE_LANGUAGE'//'|sed 's/'$DESTINATION_LANGUAGE'//')

# Call Google and ask for the answer
curl -s -A "Mozilla" "http://translate.google.com.br/translate_a/t?client=t&text=$TEXT_TO_TRANSLATE&hl=pt-BR&sl=$SOURCE_LANGUAGE&tl=$DESTINATION_LANGUAGE&multires=1&ssel=0&tsel=0&sc=1" | iconv -f iso8859-1 -t utf-8 | awk -F'"' '{print $2}'