default: run

image:
	docker build -t docs .

container: image
	docker run -i --name cli50 --rm -v "$(PWD)":/root -t docs

docs: clean
	jekyll build -V

clean:
	rm -rf css docs
