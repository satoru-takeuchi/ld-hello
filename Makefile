.PHONY: all clean

all: hello

clean:
	rm -f hello *.o *~

empty.o: empty.s
	as -o $@ $<

hello: hello.ld empty.o
	ld -o $@ -T $< empty.o

.PHONY: clean
