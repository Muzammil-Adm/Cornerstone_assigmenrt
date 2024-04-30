# Use the official Go image as the base
FROM golang:1.16-alpine

# Set the working directory
WORKDIR /app

# Copy the source code
COPY . .

# Download the module dependencies
RUN go mod download

# Build the Go app
RUN go build -o main .

# Expose the port the app runs on
EXPOSE 8080

# Start the app
CMD ["./main"]
