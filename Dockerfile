# Use version 1.13 golang base image
FROM golang:1.13

ENV DIR /go/src/github.com/cloudgineers/hello-minikube

# Use /app as the working directory
WORKDIR $DIR

# Copy files to the working directory
ADD . $DIR

# Build the application
RUN go get

RUN go build

# Expose the port that the application is running on
EXPOSE 8080

# Start the application
CMD ["./hello-minikube"]