
// tratando erros em async await
Future<void> main () async {

print('inicio');

final id = await buscarId();

final nome = await buscarNome(id).catchError((onError){
print(onError);
});

print('O nome é $nome');

print('Fim');
}


Future<int> buscarId () async => 80;


/*
Como nossa fnção retorna uma exeção então como é uma função com async await o dart
irá retornar um future().error() 

*/
Future<String> buscarNome (int id) async {
throw Exception();

}