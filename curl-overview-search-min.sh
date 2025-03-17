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
  }' | jq "." > job-postings.json
  
cat job-postings.json  | jq -c ".items[] | {link, displayTitle, hiringOrganization, openPositions, degreeLevel}" > job-postings-summary.json
cat job-postings.json  | jq -c ".items[] | {link: .link, description: .description.htmlEncoded}" > job-postings-descriptions.json
