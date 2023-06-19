void main (){

var f1 = Future.delayed(Duration(seconds: 2), () => 'F1'); 

var f2 = Future.delayed(Duration(seconds: 1), () => 'F2');

var f3 = Future.delayed(Duration(seconds: 5), () => 'F3'); 

var f4 = Future.delayed(Duration(seconds: 1), () => 'F4');

/* 
Any: essa Fubção trará a primeira função que for concluida primeiro apenas isso. 
Nesse caso ele tratá apenas o F2 visto que é a primeira função a ser concluida.
Obs: Apensar que não apresentar os prints das demais funções o any executa eles normalmente o que ele faz é apenas ignora-los
mas os mesmo serão executados

Ele irá mostrar tanto se o futuro apresentar erro ou sucesso. 
*/ 
Future.any([f1,f2,f3,f4]).then(print).catchError(print);
}