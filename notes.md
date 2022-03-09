## Sempre que precisar limpar os artefatos dos containers
./docker-clean.sh

## Copia o .env
cp .env_example .env

## Subir App Docker
docker-compose up -d

## Criar Banco de Dados
docker-compose exec app rails db:create RAILS_ENV=production

## Fazer Migracao
docker-compose exec app rails db:migrate RAILS_ENV=production

## Webpacker Install
docker-compose run app rails webpacker:install RAILS_ENV=production
docker-compose run app bundle exec rails assets:precompile

## Criando os seeds
docker-compose run app rails db:seed RAILS_ENV=production

## Rodar o build
sudo chmod -R 777 postgres

## Rails console
docker-compose exec app pry 

## desinstalar todas as gems
for i in `gem list --no-versions`; do gem uninstall -aIx $i; done


docker-compose exec app rails credentials:edit RAILS_ENV=production