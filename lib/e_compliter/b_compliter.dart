import 'dart:async';

Future<void> main() async {

final usuario = usuarioRepository(); 

// tratramento sem usar o complete e sim usando funções de callback
usuario.salvarComum((sucess){ 
print('Sucesso $sucess'); 
}, (error) { 
print('Error $error');
});



// tratamento usando o complete
// veja como o codigo fica mais limpo e menos complexo
try {
  final mensagem = await usuario.salvarCompleter();
 print('Sucesso $mensagem'); 
}  catch (e) {
  print('Error $e'); 
}
}


// forma de tratamento sem usar o complete
class usuarioRepository {
  void salvarComum(void Function(String) callback, void Function(String) callbackError) {
    Timer(Duration(seconds: 2), () {
      try {
        callback('USuario salvo com sucesso');
      } catch (e) {
        callbackError('Erro');
      }
    });
  }

// forma de tratamento usando o complete

Future<dynamic> salvarCompleter (){


final completer = Completer(); 

   Timer(Duration(seconds: 2), () {
      try {
        completer.complete('usuaio salvo com sucesso');
      } catch (e) {
        completer.completeError('Erro ao salvar o usuario');
      }
    });

 return completer.future;
}

}


