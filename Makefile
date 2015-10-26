SRC=ctaloader.c communication_api.c cybtldr_api.c cybtldr_command.c cybtldr_parse.c
OBJ=$(subst .c,.o,$(SRC))
all: ctaloader

%.o: %.c
	gcc -Wall -g -c $< -o $@

ctaloader: $(OBJ)
	gcc -Wall -g -o $@ $+

clean:
	-rm *.o ctaloader 