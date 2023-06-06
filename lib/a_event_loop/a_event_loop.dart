import 'dart:async';

/*
Evidenciando listas de eventos. 

Prioridade MIcrotask

Depois lista de eventos normal. 

O proprio dart faz esse controe.
*/


void main() {
  print('inicio main');

// ele irá executar de acordo com a lista de eventos

  Timer(Duration.zero, () {
    scheduleMicrotask((() => print('Nova microtask 1')));

    print('Event 1');
  }); // esse comando irá pra fica de eventos // esse comando será chamado depois do microtask 1

  Timer(
      Duration.zero,
      () => print(
          'Event 2')); // esse comando irá pra fica de eventos // esse comando será chamado depois do microtask 1

  Timer(
      Duration.zero,
      () => print(
          'Event 3')); // esse comando irá pra fica de eventos // esse comando será chamado depois do microtask 1

  scheduleMicrotask(() => print(
      'Microtask 1')); // esse commando irá pra fica de microtasks // ele ira executar primeiro esse comando pois é prioritario

  scheduleMicrotask(() => print(
      'Microtask 2')); // esse commando irá pra fica de microtasks // ele ira executar primeiro esse comando pois é prioritario

  print('Fim main');
}
