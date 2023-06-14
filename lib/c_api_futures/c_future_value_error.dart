void main (){

/*
 Futures podem ter os segtuintes status; 

Incompleto, 

Completo com sucesso, 

Completo com erro, 

*/

Future.value(''); // Essa  função pega o valor que o futuro que retornou

Future.error(''); // Essa função pega o erro que o Futuro retornou


// exempo 

}


Future<String> funcaoQualquer (){
// O tipo String nao é um Futuro logo para retornar a mensagem precisamos coocar dentro de um futuro.value ou podemos colocar um async na frente da
// função que o dart fará isso por nós

return Future.value('Valor da função');
}