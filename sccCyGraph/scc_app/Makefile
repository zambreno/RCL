EXEC = parallelCyGraphApp.exe
SWMODEL = ../sim/CaeSimPers

all:	$(EXEC) $(SWMODEL)

clean:
	rm -f $(EXEC)
	rm -rf scc_cpu.exe
	make --directory=../sim clean
	rm -rf flog.txt

$(EXEC):	parallelCyGraphApp.cpp cpSCC.s
	cnyCC -Ofast -g parallelCyGraphApp.cpp cpSCC.s -o parallelCyGraphApp.exe
	g++ parallelCyGraphApp.cpp -o scc_cpu.exe

$(SWMODEL): ../Makefile.include ../sim/CaeIsaparallelCyGraph.cpp
	make -C ../sim


