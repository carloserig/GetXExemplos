import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resumo_getx/reatividade_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Home Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Navegação entre Telas'),
            ),
            ElevatedButton(
              onPressed: () {
                //navegação comum
                Get.to(ReatividadePage());
              },
              child: const Text('Reatividade GetX'),
            ),
            ElevatedButton(
              onPressed: () {
                //navegação nomeada
                Get.toNamed('/api');
              },
              child: const Text('Api GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
