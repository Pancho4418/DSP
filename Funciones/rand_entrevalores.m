function[x,n,y,z]=rand_entrevalores(min,max,filas,columnas);
r=min+rand(columnas,filas)*(max-min);