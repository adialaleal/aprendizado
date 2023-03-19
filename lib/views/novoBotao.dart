

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home.controller.dart';

class NovoBotao extends GetWidget<HomeController> {
  const NovoBotao({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView(
        children: controller.respostas.entries.map(
          (e) {
            return Container(
              height: 50,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: OutlinedButton(
                onPressed: controller.responder,
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                ),
                child: Obx(
                  () => Text(
                    e.value[controller.indexQuestionario.value],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
