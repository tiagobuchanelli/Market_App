import 'package:dio/dio.dart';

Response tratarRetornoRest(Response response) {
  print("entrou no response do retorno.." + response.statusCode.toString());
  switch (response.statusCode) {
    case 200:
      return response;
    case 201:
      return response;
    case 400:
      throw Exception("Não foi possível realizar a operação (Status: " +
          response.statusCode.toString() +
          ")");
    case 401:
      throw Exception("Usuário não autorizado (Status: " +
          response.statusCode.toString() +
          ")");
    case 403:
      throw Exception(
          "Acesso negado (Status: " + response.statusCode.toString() + ")");
    case 404:
      throw ("Recurso não encontrado (Status: " +
          response.statusCode.toString() +
          " - Msg: " +
          response.toString() +
          ")");
    case 500:
      throw Exception(
          "Erro Desconhecido (Status: " + response.statusCode.toString() + ")");
    default:
      throw Exception("Erro Desconhecido do Servidor (Status: " +
          response.statusCode.toString() +
          ")");
  }
}
