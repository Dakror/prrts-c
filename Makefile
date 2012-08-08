
CFLAGS=-g -Wall -O3 -DCHECK_CRCS

prrts: main.c kdtree.c prrts.c mt19937a.c hrtimer.c alloc.c linear.c naocup.c collide.c crc.c stats.c
	gcc ${CFLAGS} -o $@  $^ -lstdc++ -lm -lc -lpthread -fopenmp

naotest: naotest.c naocup.c collide.c prrts.c kdtree.c linear.c hrtimer.c mt19937a.c alloc.c stats.c
	gcc -g -Wall -O2 -o $@ -lstdc++ -lm -lc -lpthread $^

lineartest: lineartest.c linear.c
	gcc -g -Wall -O2 -o $@ -lstdc++ -lm -lc -lpthread $^

