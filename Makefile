SHELL=sh

compose_up:
	docker-compose up

compose_tests:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app