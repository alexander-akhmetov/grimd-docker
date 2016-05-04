build:
	go get github.com/looterz/grimd
	env GOOS=linux GOARCH=amd64 go build -o grimd -v github.com/looterz/grimd
