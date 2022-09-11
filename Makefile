aic-container:
	docker build -f Dockerfile -t aic-bash:20220910 .

aic-sh:
	docker run -it aic-bash:20220910 aic.sh ${AIC_OPTIONS}

aic-local:
	docker run -it -v ${PWD}:/aic-bash aic-bash:20220910 aic.sh ${AIC_OPTIONS}

.PHONY: aic-container aic-sh aic-local