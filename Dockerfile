# Use the official Go image as the base image
FROM golang:1.22.6-alpine

# Set the working directory inside the container
WORKDIR /

# Copy the Go module files
COPY go.mod ./

# Download and install the project dependencies
RUN go mod download

# Copy the source code into the container
COPY . .

# Build the Go application
RUN go build -o app ./cmd/dummy-go/

# Set the entry point for the container
ENTRYPOINT ["./app"]