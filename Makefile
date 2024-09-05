.PHONY: clear

up:
	docker compose up -d
	@make check-url
	@echo "Docker Compose services are up and running successfully!"

check-url:
	until [ "$$(docker compose exec -it web curl -s -o /dev/null -w "%{http_code}" http://localhost)" -eq "200" ]; do \
		echo "Waiting for server to be ready..."; \
		sleep 5; \
	done; \
	@echo "Success: Server is up and running."

clear:
	@echo "Clearing cache..."
	@php artisan cache:clear
	@echo "Clearing routes..."
	@php artisan route:clear
	@echo "Clearing config..."
	@php artisan config:clear
	@echo "All clear!"

ssh-web:
	@docker compose exec -it web sh
	
mysql:
	@docker compose exec -it mysql -hmysql -uroot -ppassword patpat

down: 
	docker compose down --volumes