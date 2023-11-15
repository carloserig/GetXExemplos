import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resumo_getx/tipo_item_repository.dart';

class ApiGetConectPage extends StatelessWidget {
  const ApiGetConectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar dados API'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Consultando API com GetConnect'),
            ),

            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Voltar'),
            ),
            ElevatedButton(
              onPressed: () async {
                var tipos = await TipoItemRepository().buscarTipos();
                print(tipos);
              },
              child: const Text('Consultar Tipos Equipamentos'),
            ),
          ],
        ),
      ),
    );
  }
}
