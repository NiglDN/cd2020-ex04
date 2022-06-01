FROM golang:1.11-alpine

LABEL maintainer="nigldominik96@gmail.com"

WORKDIR /src

COPY main.go ./

RUN ls

RUN CGO_ENABLED=0 go build -o /usr/myappmain

EXPOSE 8888

CMD ["/usr/myappmain"]
