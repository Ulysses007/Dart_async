import 'dart:async';

Future<void> main () async {

final aguardando = inserindoAlgoBemLento();


print(DateTime.now().toIso8601String()); 



// o comando timeout diz quanto tempo eu quero esperar aexecução de um Futuro. 
// Nesse caso nosso Futuro é de 3 segundos, mas nosso timeout é apenas de 1 segundo. 
// pontanto o dart irá retornar um erro de Futuro nao competado
// IMPORTANTE: O TIMEOUT NAO VAI CANCELAR A EXECUCAO DO FUTURO, APENAS VAI INFORMAR QUE ELE NAO FOI EXECUTADO DENTRO DO TEMPO QUE VC DEFINIU. 
// MAS O FUTURO CONTINUARA A SER EXECUTADO NORMALMENTE. 
aguardando.timeout(Duration(seconds: 1), onTimeout:(){
print('Irá passar aqui caso o timeout veja executado'); 
}).catchError((onError){
 print('Terminou com erro $onError'); 
}); 


//Fazendo o mesmo prodecidimento ultilizando o async e await

try{
final aguardando2 = await inserindoAlgoBemLento().timeout(Duration(seconds: 1));
} on TimeoutException catch (e){
print('Finalizou o timeout'); 
}


}



Future<void> inserindoAlgoBemLento (){

return Future.delayed(Duration(seconds: 3),(){

print('Terminou o insert');

print(DateTime.now().toIso8601String()); 
});
}