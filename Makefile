libhmm.a:hmm.o
	ar -rs libhmm.a hmm.o

libhmm.so:hmm_pic.o
	gcc -shared -o libhmm.so hmm_pic.o

hmm.o:hmm_test.c
	gcc -o hmm.o -c hmm_test.c

hmm_pic.o:hmm_test.c
	gcc -fPIC -o hmm_pic.o -c hmm_test.c
	
