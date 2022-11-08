ifneq (,$(wildcard ./.env))
	include ./.env
	# Expose all defined variables to subprocesses.
	export
endif

test:
	echo $(CONTAINER_NAME)

up:
	touch data/logs/general.log
	docker compose up -d

down:
	docker compose down

exec:
	docker exec -it $(CONTAINER_NAME) bash

exec-mysql:
	docker exec -it $(CONTAINER_NAME) mysql

logs:
	docker logs --tail 200 --follow $(CONTAINER_NAME)

rm-vol:
	docker stop $(CONTAINER_NAME) || true
	docker volume rm $(CONTAINER_NAME) || true
