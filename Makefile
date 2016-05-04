build:
	go get github.com/looterz/grimd
	env GOOS=linux GOARCH=amd64 go build -o grimd -v github.com/looterz/grimd
	make build-docker

build-docker:
	docker build -t akhmetov/grimd:$(TAG) -f Dockerfile .
	docker push akhmetov/grimd