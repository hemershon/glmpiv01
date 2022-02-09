## Sempre que precisar limpar os artefatos dos containers
./docker-clean.sh

## Copia o .env
cp .env_example .env

## Subir App Docker
docker-compose up -d

## Criar Banco de Dados
docker-compose exec app rails db:create

## Fazer Migracao
docker-compose exec app rails db:migrate

## Webpacker Install
docker-compose run app rails webpacker:install

## Criando os seeds
docker-compose run app rails db:seed

## Rodar o build
sudo chmod -R 777 postgres

## Rails console
docker-compose exec app pry 

## desinstalar todas as gems
for i in `gem list --no-versions`; do gem uninstall -aIx $i; done
