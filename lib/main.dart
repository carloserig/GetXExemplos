import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resumo_getx/api_get_conect_page.dart';
import 'package:resumo_getx/home_page.dart';
import 'package:resumo_getx/reatividade_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: (() =>  const HomePage())
        ),
        GetPage(
          name: '/reatividade',
          page: (() =>  ReatividadePage())
        ),
        GetPage(
          name: '/api',
          page: (() =>  ApiGetConectPage())
        ),
      ],
    );
  }
}
