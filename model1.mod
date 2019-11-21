set P;  # um conjuto de produtos

param a{P} >= 0;  # toneladas por hora de projeto j, para todo j pertencente a P
param b >= 0;  # horas disponiveis para maquina
param c{P} >= 0;  # lucro por produto
param u{P} >= 0;  # maxima tonelada por produto

var X{P} >= 0;  # quantidade produzida de produto j, para todo j pertencente a P

maximize LucroTotal:
  sum{j in P} (c[j])*X[j];
  
subject to horasDispiveis:
  sum{j in P} (1/a[j])*X[j] <= b;
  
subject to limiteSuperior{j in P}:
  X[j] <= u[j];