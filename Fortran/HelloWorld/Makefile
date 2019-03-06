TARGET = $(patsubst %.f, %, $(wildcard *.f))
FF = mpif77

SRC = $(wildcard *.f)

$(TARGET): $(SRC)
	$(FF) $< -o $@
#	-mv a.exe $@
	
clean:
	-rm *.exe
