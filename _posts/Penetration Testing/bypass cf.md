Go to Proxy > Options > Match and Replace then add and enable a Request header rule that overrides the User-Agent header:


^User-Agent.*$
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0