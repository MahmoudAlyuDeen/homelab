set -a # export all variables
source .env
set +a # undo the set -a

envsubst < "config.yml" > "merged-config.yml"

docker compose up -d --force-recreate
