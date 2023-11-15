import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReatividadePage extends StatelessWidget {
  ReatividadePage({super.key});

  final _counter = 0.obs;

  final nome = RxString('Carlos Erig');
  final isAluno = RxBool(true);
  final qtdCursos = RxInt(2);
  final precoCusto = RxDouble(50.60);
  final livros = RxList(['Flutter do Zero', 'Dart Completo']);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reatividade'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Gerenciamento de Estado'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Voltar'),
            ),
            
            const SizedBox(
              height: 20,
            ),

            const Text('Contador'),
            Obx(
              () => Text('$_counter'),
            ),
            ElevatedButton(
                onPressed: (() {
                  _counter.value++;
                }),
                child: const Text('Somar 1')),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Text('$livros'),
            ),
            ElevatedButton(
                onPressed: (() {
                  livros.add('Teste');
                }),
                child: const Text('Add List'))
          ],
        ),
      ),
    );
  }
}
