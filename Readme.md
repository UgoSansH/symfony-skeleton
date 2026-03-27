
# Build Docker

```shell
docker compose build
docker compose up -d
```


# Makefile

```shell
# docker compose app -d
make up

# Docker Down
make down

# Docker build
make build

# Docker build avec purge du cache (--no-cache)
make rebuild

# build + up
make start

# Down + suppression des images et container (system prune)
make clear

# clear + start
make reload

# clear + rebuild + start
make refresh

# Jouer les tests PHPunit avec une sortie lisible pour un humain (--testdox)
make test

# Jouer les tests PHPunit avec une sortie lisible pour un humain (--testdox)
# Génération d'un compte rendu du Code Coverage au format HTML (dossier: /coverage )
# Affichage de toutes les notices et warnings
make tc

# PHP CS fixer en mode --dry-run
# Liste les corrections à appliquer
make fix-check

# PHP CS Fixer avec fix automatique des corrections à appliquer
make fix

# PHP Stan
make phpstan

# Composer audi
make security-check
```
