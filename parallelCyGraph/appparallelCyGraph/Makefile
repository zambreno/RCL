EXEC = parallelCyGraphApp.exe
SWMODEL = ../sim/CaeSimPers

all:	$(EXEC) $(SWMODEL)

clean:
	rm -f $(EXEC)
	rm -rf bfs_cpu.exe
	make --directory=../sim clean
	rm -rf flog.txt

$(EXEC):	parallelCyGraphApp.cpp cpparallelCyGraph.s
	cnyCC -g -O3 parallelCyGraphApp.cpp cpparallelCyGraph.s -o parallelCyGraphApp.exe
	g++ parallelCyGraphApp.cpp -o bfs_cpu.exe

$(SWMODEL): ../Makefile.include ../sim/CaeIsaparallelCyGraph.cpp
	make -C ../sim


