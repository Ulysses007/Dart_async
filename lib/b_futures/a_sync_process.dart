// processamento sincrono

// esse bloco de codigo é executado em apenas 1 evento

void main() {
  print('iniciando main');

funcaoComplexa();

funcaoComplexa2();

  print('Finalizando main');
}

void funcaoComplexa() {
  print('Iniciando algo complexo');

  print('Fazendo algo complexo');

  print('Finalizando algo complexo');
}


void funcaoComplexa2() {
  print('Iniciando algo complexo 2');

  print('Fazendo algo complexo 2');

  print('Finalizando algo complexo 2');
}