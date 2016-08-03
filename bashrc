# Sample Alias
# alias docker-php="docker run -ti --rm -v $(pwd):/app -w /app php:cli php"

# Sample Function
function docker-php() {
    docker run -ti --rm -v $(pwd):/app -w /app $imagename php $*
}

function composer() {
    docker run -u $UID -ti --rm -v ~/.composer:/root/.composer -v $(pwd):/app ~/.ssh:/root/.ssh composer/composer $*
}
