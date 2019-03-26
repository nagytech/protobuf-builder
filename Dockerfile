FROM alpine

RUN apk add --no-cache bash
RUN apk -U --no-cache add protobuf

ENTRYPOINT [ "/bin/bash", "-c", "protoc -I/app/src -I/app/include --csharp_out=/app/dist /app/src/*.proto"]
