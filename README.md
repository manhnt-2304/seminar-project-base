# Sử dụng docker
### lệnh khởi tạo môi trường
docker-compose build

docker-compose run --rm app bundle

docker-compose run --rm app rails db:create

docker-compose run --rm app rails db:migrate

### chạy rspec
docker-compose run --rm app rspec

# Không sử dụng docker
bundle exec rails db:create

bundle exec rails db:migrate

bundle exec rspec