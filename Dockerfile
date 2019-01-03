FROM golang:latest
RUN mkdir /app
ADD test.go /app
WORKDIR /app 
RUN go build test.go 
EXPOSE 8080
CMD [“/app/test”]
