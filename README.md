# Starting using Docker Image

    docker run --rm -d   -v $(pwd):/src -p 1315:1313 --name hugo-test  klakegg/hugo:0.101.0-ext server