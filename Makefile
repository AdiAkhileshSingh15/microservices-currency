.PHONY: protos server

protos:
	protoc --proto_path=protos --go_out=protos/currency --go_opt=paths=source_relative \
	--go-grpc_out=protos/currency --go-grpc_opt=paths=source_relative \
	protos/*.proto

server:
	go run main.go