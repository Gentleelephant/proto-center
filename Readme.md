### proto命令
**根目录下执行一下命令，创建account相关服务**
protoc --proto_path=./proto/service --go_out=. --go-grpc_out=. account/account.proto