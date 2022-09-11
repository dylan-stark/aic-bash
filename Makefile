docker_build:
	docker build -f Dockerfile -t aic-bash:20220910 .

docker_run:
	docker run -it -v ${PWD}:/aic-bash-on-host aic-bash:20220910
