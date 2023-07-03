import 'dart:convert';

import 'package:http/http.dart';

Future<void> main() async {
  final result =
      await get(Uri.parse('https://viacep.com.br/ws/01001000/json/'));
  //*print('Body: ${result.body}');
  //*print('StatusCode: ${result.statusCode}');
  //*print('Request: ${result.request}');
  //*print('Headers: ${result.headers}');

  if (result.statusCode != 200) {
    print('Erro ao buscar CEP');
    return;
  }

  final resultData = jsonDecode(result.body);
  print(result.body);
  print(resultData['logradouro']);
}
