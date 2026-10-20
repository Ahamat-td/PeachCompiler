OBJECTS = ./build/compiler.o ./build/cprocess.o ./build/lexer.o ./build/lex_process.o ./build/helpers/buffer.o ./build/helpers/vector.o 
INCLUDES = -I./



all: ${OBJECTS}
	gcc main.c ${INCLUDES} ${OBJECTS} -g -o ./main

./build:
	mkdir -p ./build

./build/helpers:
	mkdir -p ./build/helpers

./build/compiler.o: ./compiler.c | ./build
	gcc ./compiler.c ${INCLUDES} -o ./build/compiler.o -g -c

./build/cprocess.o: ./cprocess.c | ./build
	gcc ./cprocess.c ${INCLUDES} -o ./build/cprocess.o -g -c

./build/lexer.o: ./lexer.c | ./build
	gcc ./lexer.c ${INCLUDES} -o ./build/lexer.o -g -c

./build/lex_process.o: ./lex_process.c | ./build
	gcc ./lex_process.c ${INCLUDES} -o ./build/lex_process.o -g -c

./build/helpers/buffer.o: ./helpers/buffer.c | ./build/helpers
	gcc ./helpers/buffer.c ${INCLUDES} -o ./build/helpers/buffer.o -g -c

./build/helpers/vector.o: ./helpers/vector.c | ./build/helpers
	gcc ./helpers/vector.c ${INCLUDES} -o ./build/helpers/vector.o -g -c

clean:
	rm -f ./main
	rm -rf ./build
