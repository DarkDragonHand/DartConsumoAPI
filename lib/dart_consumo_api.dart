import 'dart:convert';

void main() {
  final json = '''
  {
    "cep": "01001-000",
    "logradouro": "Praça da Sé",
    "complemento": "lado ímpar",
    "bairro": "Sé",
    "localidade": "São Paulo",
    "uf": "SP",
    "ibge": "3550308",
    "gia": "1004",
    "ddd": "11",
    "siafi": "7107"
  }
  ''';
  final jsonData = jsonDecode(json);
  //final jsonData = jsonDecode(json);
  print(jsonData.runtimeType);
  print(jsonData['logradouro']);

  final jsonMap = {'curso': 'Academia do Flutter', 'totalAlunos': 1000};
  print(jsonEncode(jsonMap));
}