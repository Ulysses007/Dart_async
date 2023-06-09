/*
 Futures podem ter os segtuintes status; 

Incompleto, 

Completo com sucesso, 

Completo com erro, 

*/

void main (){

Future((){
// registra a função que será executada quado o futuro for exxecutada com sucesso. 

}).then((value) {
// essa função pega o retorno do future. // função de caalback função then
}).catchError((onError){
//Registrando função que será executada caso o nosso futuro retorne com erro!
}).whenComplete(() {
// ja essa função será executada sempre, com erro ou sucesso.

}); 


}