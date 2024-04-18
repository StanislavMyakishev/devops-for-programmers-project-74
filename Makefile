SHELL=sh

install:
	docker compose run --rm app npm ci

ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

run_dev:
	docker-compose -f docker-compose.override.yml up --abort-on-container-exit --exit-code-from app

build:
	docker-compose -f docker-compose.yml build app

push:
	docker-compose -f docker-compose.yml push app

run_published:
	docker run -p 8080:8080 smyakishev/devops-for-programmers-project-74 npm run dev
