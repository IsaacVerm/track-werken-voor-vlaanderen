#!/bin/bash
curl 'https://www.vlaanderen.be/api/overview-search' \
  -X POST \
  -H 'Accept: application/json' \
  -H 'authorization: Basic d2VicGxhdGZvcm1kZXY6d2VicGxhdGZvcm1kZXY=' \
  -H 'content-type: application/json' \
  --data '{
    "page": {
      "offset": 0,
      "limit": 1000
    },
    "filter": {
      "contentType": {
        "IN": ["Job"]
      },
      "collectionFilters": {
        "contentSubtypeData__sources": {
          "IN": ["VO"]
        }
      }
    }
  }'