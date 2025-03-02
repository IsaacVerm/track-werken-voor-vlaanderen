#!/bin/bash
curl 'https://www.vlaanderen.be/api/overview-search' \
  -X POST \
  -H 'Accept: application/json' \
  -H 'authorization: Basic d2VicGxhdGZvcm1kZXY6d2VicGxhdGZvcm1kZXY=' \
  -H 'content-type: application/json' \
  -H 'Origin: https://www.vlaanderen.be' \
  -H 'Referer: https://www.vlaanderen.be/werken-voor-vlaanderen/vacatures' \
  --data '{
    "page": {
      "offset": 0,
      "limit": 12
    },
    "filter": {
      "contentType": {
        "IN": ["Job"]
      },
      "visibility": {
        "hub": "cc0f4502-9afd-42cf-b71f-31e43937d855"
      },
      "collectionFilters": {
        "contentSubtypeData__sources": {
          "IN": ["VO"]
        },
        "contentSubtypeData__internal": {
          "EQUAL": false
        }
      }
    },
    "orderBy": {
      "publicationDate": "DESC"
    },
    "resolverContext": {
      "language": "nl",
      "revision": "default"
    },
    "includeFacets": true
  }'