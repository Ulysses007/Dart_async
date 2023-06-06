// processamento sincrono

import 'dart:async';

void main() {
  print('iniciando main'); // Inicia o processo aqui

  funcaoComplexa(); // essa função irá terminar depois da funcaoComplexa2 pois tem um deley de  2 segundos

  funcaoComplexa2(); // Logo ele irá executar essa função e finalizar ela antes da funcaoComplexa pois ela ainda não está finalizada.

  print('Finalizando main');
}

void funcaoComplexa() {
  print('Iniciando algo complexo');

  // função assincrona
  Future.delayed(
      Duration(seconds: 2),
      () => print(
          'Fazendo algo complexo ')); // essa função demora mais que a funçãoComplexa2 logo irá ser finaizada depois

  print('Finalizando algo complexo ');
}

void funcaoComplexa2() {
  print('Iniciando algo complexo 2');

  // função assincrona
  Future.delayed(Duration(seconds: 1), () => print('Fazendo algo complexo 2'));

  print('Finalizando algo complexo 2');
}
