PORT := 1313
MODE := -it

run:
	docker run -d   -v $(pwd):/src -p $(PORT):1313 --name hugo-test  --rm klakegg/hugo:0.101.0-ext server

reload:
# - ignores error if container not there.
	- docker stop hugo-test && docker rm hugo-test 
	docker run --rm $(MODE) -v $(PWD):/src -p $(PORT):1313 --name hugo-test  klakegg/hugo:0.101.0-ext server