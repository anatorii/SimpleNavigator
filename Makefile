all:
	go run cmd/main.go
	
clean:
	rm build/*
run:
	go run cmd/client/client.go

test:
	make test_alg
	make test_graph

test_graph:
	go test ./pkg/graph/ -v

test_alg:
	go test ./pkg/algorithms/ -v
