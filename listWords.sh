#!/bin/bash

URL="https://stream.watsonplatform.net/text-to-speech/api/v1"

function readConfigProperties ()
{
  if [ ! -f ".env" ]
  then
      echo "File .env not found at the project root folder"
      exit 1
  fi
  USERNAME=`cat .env | grep 'TTS_USERNAME' | cut -d'=' -f2`
  PASSWORD=`cat .env | grep 'TTS_PASSWORD' | cut -d'=' -f2`
  CUSTOMIZATION_ID=`cat .env | grep 'TTS_CUSTOMIZATION_ID' | cut -d'=' -f2`
}


readConfigProperties

# listing words
curl -X GET -u "$USERNAME":"$PASSWORD" "$URL/customizations/$CUSTOMIZATION_ID/words"
