void main (){

funcao().then((value) => SegundaFuncao(value).then((value) => print(value)));


}


Future<String> funcao (){
return Future.delayed(Duration(seconds: 1), () => 'pararemtro 1');
}


Future<String> SegundaFuncao (param){
return Future.value('parametro processado $param');
}