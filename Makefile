all: configure build test

configure:
	cabal configure --enable-tests --enable-library-coverage --enable-benchmarks

build:
	cabal build

test:
	cabal test --test-option=--color --show-details=always

clean:
	rm -rf dist
