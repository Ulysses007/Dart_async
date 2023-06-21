import 'dart:async';

void main (){
 buscarAlgo(2).then((value) => print('Mensagem: $value'))
.catchError((Error) => print('Mensagem: $Error'));;

}

/*
O complete serve para manipular as estruturas do Futuro que o dart por padrão já da um retorno; 

POsso controlar a regra de negocio que para que aconteca um erro

Posso controlar a regra de negccio para acontecer um Complete

*/


Future<String> buscarAlgo( int numero){

final completer = Completer<String>();

Timer(Duration(seconds: 2), (() {
  if (numero == 0) {
    completer.complete('NUmero enviado com sucesso'); 
  } else {
completer.completeError('Numero enviado com erro', StackTrace.current); 
  }
}));

return completer.future;

}