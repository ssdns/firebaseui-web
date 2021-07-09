PHONY = build-ja default-ja

build-ja:
	npm run build; npm run build build-js-ja; npm run build build-npm-ja; npm run build build-esm-ja

default-ja:
	ls dist/*__ja.js | awk '{ print $$1, $$gsub("__ja", "", $$1) }'| xargs -n 2 mv

ja: build-ja default-ja
