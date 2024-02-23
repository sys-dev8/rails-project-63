# Установка зависимостей проекта
install:
	bundle install

# Проверка rubocop
lint:
	bundle exec rubocop

# Исправление rubocop
lint-fix:
	bundle exec rubocop -A

# Запуст тестов
test:
	bundle exec rspec
