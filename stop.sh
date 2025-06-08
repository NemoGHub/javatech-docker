#!/usr/bin/env bash

if [ $# -eq 0 ]
then
  docker-compose down --rmi local --remove-orphans
#      down — останавливает и удаляет контейнеры, сети и тома.
#      --rmi local — удаляет локальные образы, созданные docker-compose build.
#      --remove-orphans — удаляет контейнеры, не указанные в docker-compose.yml.
else
  docker-compose rm -fsv $@
#      rm — удаляет только контейнеры без сетей и томов
#      -f --force — принудительное удаление даже если контейнеры запущены.
#      -s --stop — останавливает контейнеры перед удалением.
#      -v --volumes — удаляет анонимные тома (но не именованные).
fi
