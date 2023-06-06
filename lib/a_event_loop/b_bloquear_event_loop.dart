import 'dart:async';

import 'dart:io';

void main() {
  print('inicio main');
  print(TemperaturaAtual());
  print(previsaoAmanha());
  print('Fim main');
}

String TemperaturaAtual() {
  sleep(const Duration(seconds: 3)); // esse comando boqueaia o event loop travando minha apicação, não deixando outro processo ser realizado. 
  return '30';
}

String previsaoAmanha() {
  return '35';
}
