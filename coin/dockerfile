FROM alpine
RUN apk add --no-cache curl jq bash

COPY coin.sh coin.sh 
COPY currency.txt currency.txt
CMD ["sh", "coin.sh"]
