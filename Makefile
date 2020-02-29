default:
	sh install.sh
	docker-compose up -d --build 

delete:
	docker-compose down
	rm -rf wordpress