# Paths

# Docker
image_name := action-deployment-update
image_tag := action-deployment-update

sh: stop
	@echo "[INFO] Hosting docker image"
	@docker run -it --name $(image_name) $(image_tag) sh

kill:
	@echo "[INFO] Killing docker image"
	@docker kill $(image_tag)

stop: kill
	@echo "[INFO] Stopping docker image"
	@docker rm $(image_tag)

docker:
	@echo "[INFO] Create docker image"
	@docker build -t $(image_name) -f Dockerfile ./
