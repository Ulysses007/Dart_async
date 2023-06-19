void main() {
  print('Inicio');

  var f1 = Future.delayed(Duration(seconds: 1), () => 'F1');

  var f2 = Future.delayed(Duration(seconds: 1), () => 'F2');

  var f3 = Future.delayed(
      Duration(seconds: 3),
      () =>
          'F3'); // essa função demora mais que as outras, mas o wait espera a conclusão dela para apresentar todos os resultados de uma ves

  var f4 = Future.delayed(Duration(seconds: 1), () => 'F4');

  var f5 = Future.delayed(
      Duration(seconds: 1),
      () => Future.error(
          'Erro em alguma coisa')); // como está função está com erro se colocarmos ela dentro do wait todas iram apresentar erro

/*
O wait retorna todas as funções de uma vez só colocando em um formato de array
O await como retorna todas as funções de uma ves só ele espera a conclusão de todas para poder retorna-las
Caso uma das funções apresente erro então o wait irá apresentar o erro como se todas tivessem dado erro. 


*/

  print(DateTime.now().toIso8601String());

//eagerError é um parametro que nao irá esperar todas as funções serem concluidas para poder aprersentar o erro de uma das funções
//Esse parametro vem desabilitado como padrao.
//cleanUp essa função irá executar os futuros que nao retornaram erros, pois como sabemos o wait se dé erro em um Futuro ele dará erro em todos. 
// O cleanUp só será executado caso alguma das funções retorne com erro, caso todas retornem sucesso então o cleanUp não será executado. 
  Future.wait([f1, f2, f3, f4, f5], eagerError: true, cleanUp: (successValue) {
    print('Completou $successValue');
  }).then((value) {
    print(DateTime.now().toIso8601String());
    print(value);
  }).catchError((error) {
    print(error);
  }); // tambem é possivel tratar o erro com uma exeção como já conhecemos

  print('Fim');
}
