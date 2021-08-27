from golang:buster as builder

WORKDIR /app
ADD . .
RUN go mod init example.com/m/v2
RUN go get github.com/younetsico/goscraper
RUN go get github.com/gorilla/handlers
RUN go get github.com/gorilla/mux
RUN go build -o /usr/local/bin/preview

EXPOSE 8080
CMD ["/usr/local/bin/preview"]