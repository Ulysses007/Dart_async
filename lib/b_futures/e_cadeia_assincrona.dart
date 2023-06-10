void main (){

funcao().then((value) => SegundaFuncao(value).then((value) => print(value)));// o then pode ser chamado nessa função pois ela é um Futuro logo  fica com as mesmas caracteristicas. 


print('Outro metodo'); 

funcao()
.then((value) => SegundaFuncao(value)
.then((value) => print('$value')));

}


Future<String> funcao (){
return Future.delayed(Duration(seconds: 1), () => 'pararemtro 1');
}


Future<String> SegundaFuncao (param){
return Future.value('parametro processado $param');
}