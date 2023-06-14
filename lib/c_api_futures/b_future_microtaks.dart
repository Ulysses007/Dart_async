void main (){
print('inicio main');


Future<String>((() => 'Future normal')).then(print);  ;// sera executada depois da linha de baixo. pois n tem prioridade na fila de eventos

Future<String>.microtask(() => 'Future micriTask').then(print); // nesse caso ele vai executar primeiro essa função antes de executar a de cima. 

print('Fim main');


}