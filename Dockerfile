FROM alpine
RUN apk add --no-cache sqlite sqlite-dev musl-dev gcc && \
      wget -O math.c 'http://www.sqlite.org/contrib/download/extension-functions.c?get=25' && \
      gcc -g -fPIC -shared math.c -o /usr/lib/math.so && \
      apk del sqlite-dev musl-dev gcc
