FROM alpine
RUN apk add --update sqlite sqlite-dev musl-dev gcc && \
      wget -O math.c 'http://www.sqlite.org/contrib/download/extension-functions.c?get=25' && \
      gcc -g -fPIC -shared math.c -o /sbin/math.so && \
      apk del sqlite-dev musl-dev gcc && \
      rm /var/cache/apk/*
