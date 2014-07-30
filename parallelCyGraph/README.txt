Setting environment:
  cp tools/cny_Env ~
  cd ~
  source cny_Env

Running simulation:
  cd appparallelCyGraph
  make
  ./run -vsim graphs/minigraph.mtx d

Create Bitfile:
  cd phys
  time make
  make release

Run Code on Coprocessor:
  cd appparallelCyGraph
  make
  ./runcp graphs/minigraph.mtx

Generating graphs:
  - Check the GTgraph folder on how to generate R-MAT and random graphs
  - In order to convert GTgraph output file to mtx file, use the python code "tools/convert_gtgraph.py"
  - Copy the python code to the same folder that contains the graph files