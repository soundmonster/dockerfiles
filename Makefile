freerouting_cli_push:
	docker push soundmonster/freerouting_cli:latest
	docker push soundmonster/freerouting_cli:v0.1.0
freerouting_cli_build:
	docker build freerouting_cli -t soundmonster/freerouting_cli:latest -t soundmonster/freerouting_cli:v0.1.0
