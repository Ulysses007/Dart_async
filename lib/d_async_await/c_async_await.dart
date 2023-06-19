Future<int> buscarId () async => 80;

Future<String> buscarNome (int id) async => 'Ulysses Siqueira $id';


// Programação sem usar o async await
// Veja que se torna bem mais cpmplexo 

Future<String> buscarNomeUsuario () {

return buscarId().then((id) {
return buscarNome(id).then((nome) {
return 'Usuario $nome';
});
}); 

}

// Utilização do async await na programação dart
Future<String > bucarNomeUsuarioAwait () async {
final id = await buscarId();
final nome = await buscarNome(id); 


return 'Usuaior $nome';
}



void main (){

print('inicio');

buscarNomeUsuario().then(print);

print('Fim');

}