void main ()async{


print('Inciio');
final nomes = ['Ulysses', 'Filipe', 'Cicero', 'Valencia'];




// o foreach nao é indicado para trabalhar com metodos assincronos, 
// caso seja necessario usar então o ideal é o for in ou 0 Future.foreach

// nomes.forEach((nome)  async{


// print('Fim');

// });

// Future.forEach<String>(nomes, (nome) async{

// final saudacaoNome = await saudacao(nome);

// print(saudacaoNome);
// });

final nomesFuture = nomes.map((nome) => saudacao(nome)).toList();

final nomesProcessados = await Future.wait(nomesFuture);

print(nomesProcessados);

 print('Fim');
}


Future<String> saudacao (String nome )async {

print('Inicio saudacao $nome');

return Future.delayed(Duration(seconds: 1) ,(){


print('Fim saudacao $nome');

return'Ola $nome'; 



});



}