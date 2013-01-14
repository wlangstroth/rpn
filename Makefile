version := $(shell awk '/^version:/{print $$2}' ../$(package).cabal)

all: configure build test

configure:
	cabal configure --enable-tests --enable-library-coverage

build:
	cabal build

test:
	cabal test --test-option=--color --show-details=always

clean:
	rm -rf dist
