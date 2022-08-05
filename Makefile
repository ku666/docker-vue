MAIN=wcz666/docker-vue
IMAGE=$(MAIN):latest

define buildFunction
	rm -rf ./dist
	npm install
	yarn run build
	docker build -t $(1) .
	#docker push $(1)
endef

image:
	$(call buildFunction, $(IMAGE))
