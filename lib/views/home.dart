import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../controllers/home.controller.dart';
import 'novoBotao.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App perguntas'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 42),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 18,
              ),
              Obx(
                () => Text(
                  controller.perguntas[controller.indexQuestionario.value],
                  style: const TextStyle(fontSize: 24),
                ),
              ),
              NovoBotao(),

            ],
          ),
        ),
      ),
    );
  }
}
