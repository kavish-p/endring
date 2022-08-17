default:
	echo "Please set a target."

db:
	docker stop mysql-local -t 0 || echo "Container is not running."
	docker run -d --rm -p 3306:3306 --name mysql-local -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=jwt_demo -d mysql:8.0.30 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci

mongo:
	docker stop test-mongo -t 0 || echo "Container is not running."
	docker run -d -p 27017:27017 --name test-mongo -e MONGODB_INITDB_ROOT_USERNAME=root -e MONGODB_INITDB_ROOT_PASSWORD=root mongo:latest