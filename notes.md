## Setar permissao ao script
sudo chmod +x docker-clean.sh
sudo chmod +x docker-entrypoint.sh

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

## Criando os seeds
docker-compose run app rails db:seed

## Rodar o build
sudo chmod -R 777 postgres