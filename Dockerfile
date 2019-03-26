FROM golang:alpine

RUN apk add --no-cache git bash
RUN apk -U --no-cache add protobuf

RUN go get -u github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc

ENTRYPOINT [ "/bin/bash", "-c", "protoc -I/app/src -I/app/include --doc_out=/app/docs --doc_opt=markdown,docs.md --csharp_out=/app/dist /app/src/*.proto"]
