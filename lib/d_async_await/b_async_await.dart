void main() {
  final totalAlunos = busarTotalDeAlunos();

  totalAlunos.then((totalAlunosValue) {
    print('O total de alunos é $totalAlunosValue');
  });

  print('Resposta $totalAlunos');
}

Future<int> busarTotalDeAlunos() async {
  print('Esse ponto do metodo é sincrono');

  final buscarAlunos =
      await Future.value(887); // o Await irá esperar a execução do Futuro

  print('Esse ponto do metodo é depois do await');

  return buscarAlunos;
}
