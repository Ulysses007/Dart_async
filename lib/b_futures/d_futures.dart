void main (){

print('Iniciando o processamento');
Future<int>(() {
  // função assicrona, que vai realizar o calculo. 
  return 10~/2;
}).then((value) { // o value é o valot processado acima nesse caso 10/2
  print('O orçamento é  $value');

}).catchError((Error){
// é uma função que é chamada para caso algo de errado ocorra. 
// Caso ocorra algua exeção então essa será a parte que tratará a execão
return 'O calculo não pode ser realizado';

}).whenComplete(() => 
// Sempre irá passar por aqui por padrão
'Fim do processamento');

print('Termiado o processamento');


// possobilidade de tratar os erros de forma diferente. 

Future<int>(() {
  return 10~/2;
}).then((value) => 'O valor é $value',
onError: (Error)=>' Ocorreu um erro $Error' // essa é uma outra forma de tratar os erros
);

}