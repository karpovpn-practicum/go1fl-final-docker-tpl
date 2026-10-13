FROM golang:1.22

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY *.go tracker.db ./

RUN go build -o /app/parcel-tracker

CMD ["/app/parcel-tracker"]
