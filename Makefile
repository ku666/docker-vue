HUBDOMAIN=wcz666/test-jenkins
TESTIMAGE=$(HUBDOMAIN):latest

define buildFunction
	rm -rf ./dist
	npm install
	yarn run build
	docker build -t $(1) .
	docker push $(1)
endef

image:
	$(call buildFunction, $(TESTIMAGE))
