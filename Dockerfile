FROM golang:1.19-bullseye

RUN mkdir /app/ 
WORKDIR /app

ADD go.mod /app/
ADD go.sum /app/
ADD . /app/

RUN ls -la
RUN go mod download
RUN go install -mod=mod github.com/githubnemo/CompileDaemon

EXPOSE 8080
ENTRYPOINT CompileDaemon --build="go build main.go" --command=./main