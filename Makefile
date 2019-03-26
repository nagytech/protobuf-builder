DIST_DIR=./dist
SRC_DIR=./src

default: $(SRC_DIR)/*.proto
	mkdir -p $(DIST_DIR)
	docker-compose up --build

objects := $(wildcard $(DIST_DIR)/*.cs)

clean: $(objects)
	rm $(objects)
