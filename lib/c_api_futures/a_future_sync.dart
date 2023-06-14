void main (){

print(' Inicio main');

Future<String>.sync(() { // o sync executa ta a função sincronamente. 

print('Função future Executada'); 

return 'Resultado future';

}).then(print);

print(' Fim main');
}