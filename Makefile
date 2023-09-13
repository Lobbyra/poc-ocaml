all		:
		dune build
		@cp -f ./_build/default/bin/main.exe ./ocalmien
		@chmod +x ./ocalmien
		@echo You can execute ./ocalmien !

run		: createDockerImage
		@echo "Dockefile: [Running the code...]"
		@echo "--------------------------------"
		docker run -it ocamlpoc make inrun 

createDockerImage:
		@docker build -t ocamlpoc .
		@echo "Dockerfile: [Image built !]"

inrun	:
		dune build
		@cp -f ./_build/default/bin/main.exe ./ocalmien
		@chmod +x ./ocalmien
		@./ocalmien example.json
