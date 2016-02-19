
PREFIX ?= /usr/local

install:
	mkdir -p $(PREFIX)/bin
	wget https://github.com/nats-io/gnatsd/releases/download/v0.7.2/gnatsd-v0.7.2-linux-amd64.tar.gz -O - | tar zx
	rm -f LICENSE README.md
	cp -f gnatsd $(PREFIX)/bin/gnatsd

clean:
	rm -f gnatsd
