curl 'https://www.vlaanderen.be/api/overview-search' -X \
 POST -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:135.0) Gecko/20100101 Firefox/135.0' \
 -H 'Accept: application/json, text/plain, */*' \
 -H 'Accept-Language: en-US,en;q=0.5' \
 -H 'Accept-Encoding: gzip, deflate, br, zstd' \
 -H 'Referer: https://www.vlaanderen.be/werken-voor-vlaanderen/vacatures?contentSubtypeData__internal=false&order_publicationdate=desc' \
 -H 'authorization: Basic d2VicGxhdGZvcm1kZXY6d2VicGxhdGZvcm1kZXY=' \
 -H 'cache-control: no-cache' \
 -H 'content-type: application/json' \
 -H 'vary: Accept-Encoding' \
 -H 'x-transaction-id: token_1' \
 -H 'Origin: https://www.vlaanderen.be' \
 -H 'Connection: keep-alive' \
 -H 'Sec-Fetch-Dest: empty' \
 -H 'Sec-Fetch-Mode: cors' \
 -H 'Sec-Fetch-Site: same-origin' \
 -H 'Priority: u=4' \
 -H 'TE: trailers' \
 --data \
-raw '{"page":{"offset":0,"limit":12},"filter":{"contentType":{"IN":["Job"]},"contentTypeSubtypeRelatedFiltersOperator":"OR","visibility":{"hub":"cc0f4502-9afd-42cf-b71f-31e43937d855"},"collectionFilters":{"contentSubtypeData__sources":{"IN":["VO"]},"contentSubtypeData__internal":{"EQUAL":false}}},"orderBy":{"publicationDate":"DESC"},"resolverContext":{"language":"nl","revision":"default"},"includeFacets":true}'
