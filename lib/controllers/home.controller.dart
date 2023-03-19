import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString titulo = ''.obs;
  RxInt indexQuestionario = 0.obs;
  
  var perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
    'Qual é o seu esporte favorito?',
  ];

  var respostas = {
    0: ['Verde', 'Cachorro', 'Futebol'],
    1: ['Vermelho', 'Gato', 'Basquete'],
    2: ['Azul', 'Papagaio', 'Basebol'],
  };

  void responder() {
    indexQuestionario.value = ++indexQuestionario.value;
    print(indexQuestionario.value);
    if (indexQuestionario.value > 2) {
      indexQuestionario.value = 0;
    }
  }
}
