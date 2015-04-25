Setting environment:
  cp tools/cny_Env ~
  cd ~
  source cny_Env

Running simulation:
  cd scc_app
  make
  ./run -vsim graphs/minigraph.mtx d

Create Bitfile:
  cd phys
  time make
  make release

Run Code on Coprocessor:
  cd scc_app
  make
  ./runcp graphs/minigraph.mtx

