.PHONY: stop build run logs clean

stop:
	@docker-compose down

build: stop
	$(MAKE) clean
	@git clone git@github.com:backstage/backstage.git temp
	@docker-compose build
	$(MAKE) clean

run:
	@docker-compose up -d 

logs:
	@docker-compose logs -f

clean:
	@rm -rf ./temp
