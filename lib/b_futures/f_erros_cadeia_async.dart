// tratamento de erros do future. 

import 'dart:async';

void main (){
funcao(). // ira executar a funcao
then((value) => funcao2())// na funcao2 irá retornar um erro e por conta disso nao ira executar a funcao3. quando os futuros retornam um erro então o dartt pula para a parte de tratamento do erro, o cath 
.then((value) => funcao3()).// não ira exevutar essa funcao pois a funcao2 retornou um erro. 
then((print)).catchError((onError)=> print('trantando erro'));// apos o erro da funcao2 irá direto para essa linha. 

//Obs: essa forma de tratamento de erro e generica, isto é em qualquer umas das funções 1,2,3 que retornar erro
// o dart irá quebrar e executar a execão, dessa forma não da para saber qual foi a função que retornou o erro. 


// tratando os erros futuro a futuro. 


funcao(). // ira executar a funcao
then((value) => funcao2())
.then((value) => funcao3(), onError: (error){
print('tratando erro da  funcao 2');
return Future.value('Funcao2 recuperada');// Essa minha recupera o erro da função2 e retorna um sucesso, fazendo com que o cath generico no final nao seja executado.
}).
then((print)).catchError((onError)=> print('trantando erro'));

}


Future<String> funcao (){

print('Funcao 1');

return Future.value('Fazendo alguma coisa função 1 '); 
}


Future<String> funcao2 (){

print('Funcao 2');

//return Future.value('Fazendo alguma coisa função 2 '); 

return Future.error('');
}


Future<String> funcao3 (){

print('Funcao 3');

return Future.value('Fazendo alguma coisa função 3 '); 
}