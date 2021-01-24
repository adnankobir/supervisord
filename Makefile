build:
	docker buildx build --platform linux/386 -f Dockerfile.i386 -t supervisord386 --load .; \
	docker container create --name temp supervisord386; \
        docker container cp temp:/src/supervisord .; \
	docker container rm temp; \
	mv supervisord /Users/akobir/digitaltrend/go/pixel-cv/bin/.

.PHONY: build
