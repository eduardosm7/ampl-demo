set R;  # refeicoes
set V;  # vitaminas

param a{R, V} >= 0;  # percentual de vitamina assiciada a uma refercao
param l{V}    >= 0;  # requisito minimo de vitamina v, para toda vitamina
param c{R}    >= 0;  # custo do pacote de refeicao

var X{R} >= 0;

minimize CustoTotal:
  sum{r in R} c[r] * X[r];
  
subject to reqVitamina{v in V}:
  sum{r in R} a[r, v] * X[r] >= l[v];