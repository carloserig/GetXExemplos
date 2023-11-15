import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class TipoItemRepository {
  Future <List<dynamic>> buscarTipos() async {
    final _restClient = GetConnect();
    // token válido
    final token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9lcmlnLmRldi5iclwvYXBpXC9sb2dpbiIsImlhdCI6MTY5OTgzODQwMSwiZXhwIjoxNjk5ODQ1NjAxLCJuYmYiOjE2OTk4Mzg0MDEsImp0aSI6IkpjSVdPODRraEtLUVk5SXIiLCJzdWIiOjQsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.IS11GeDUYt7vWmRNGlbkUzSDSlalWcWrem79t0q8jNA';
    var uri = 'http://erig.dev.br/api/v1/tipoItem/';
    final response = await _restClient.get(
      uri,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token'
      }
    );

    if (response.statusCode != 200){
       throw Exception('Erro ao buscar tipos ==> ${response.statusText}');
    } 
    
    final tipos = response.body;

    return tipos;

  }
}