import 'dart:async';

import 'dart:io';

void main() {
  print('inicio main');
  print(TemperaturaAtual());
  print(previsaoAmanha());
  print('Fim main');
}

String TemperaturaAtual() {
  sleep(const Duration(seconds: 3));
  return '30';
}

String previsaoAmanha() {
  return '35';
}
