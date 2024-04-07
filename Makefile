SHELL=sh

install:
	

ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

compose_up:
	docker-compose up

run_dev:
	docker-compose -f docker-compose.override.yml up --abort-on-container-exit --exit-code-from app

run_tests:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

build_prod:
	docker-compose -f docker-compose.yml build app

push_prod:
	docker-compose -f docker-compose.yml push app

run_from_published_image:
	docker run -p 8080:8080 smyakishev/devops-for-programmers-project-74 npm run dev
