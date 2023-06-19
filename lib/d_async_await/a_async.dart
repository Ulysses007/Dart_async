void main (){

// essa é a forma de chama um futuro e printar ele na tela sem usar o async. 
final nome = metodoAssincronoSemAsync();
nome.then(print).catchError(print);


final nomeAsync = metodoAssincrono(); 
print(nome);

}

// essa é a forma de executar um Futuro sem usar o async
Future<String> metodoAssincronoSemAsync(){
return Future.value('retorno do metodo');
}

// o metodo async  diz para minha função que em algum momento dela será executado um metodo ou alguma coisa assincrona
// Nesse nosso exemplo o que nao é assincrono é a String de retorno. 
// dai ele envelopar o retorno desse metodo em um futuro
// é como se ele fissese isso: Future.value('retorno do metodo');
Future<String> metodoAssincrono() async{ 
return 'retorno do metodo';
}