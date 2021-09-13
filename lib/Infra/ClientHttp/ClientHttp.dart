// ignore_for_file: camel_case_types

import 'package:dio/dio.dart';
import 'package:restaurant_app/Domain/Entities/RestRequest.dart';
import 'package:restaurant_app/Infra/ClientHttp/IClientHttp.dart';
import 'package:restaurant_app/Infra/Enums/Methods.dart';

class ClientHttp implements IClientHttp {
  Dio dio = Dio();

  @override
  Future<Response> executarRequisicao(RestRequest restRequest) async {
    switch (restRequest.method) {
      case MethodsRest.Get:
        return await get(restRequest);
      case MethodsRest.Post:
        return await post(restRequest);
      case MethodsRest.Put:
        return await put(restRequest);
      case MethodsRest.Delete:
        return await put(restRequest);

      default:
        throw Exception("Erro Requisição, metodo não identificado");
    }
  }

  Future<Response> get(RestRequest restRequest) async {
    try {
      var response = await dio.get(
        restRequest.url,
        options: optionsParametros(restRequest.options),
      );
      return response;
    } catch (error) {
      throw Exception("Erro ao executar a requisição " + error.toString());
    }
  }

  Future<Response> post(RestRequest restRequest) async {
    try {
      var response = await dio.post(
        restRequest.url,
        data: restRequest.body,
        options: optionsParametros(restRequest.options),
      );
      return response;
    } catch (error) {
      throw Exception("Erro ao executar a requisição " + error.toString());
    }
  }

  Future<Response> put(RestRequest restRequest) async {
    try {
      var response = await dio.put(restRequest.url,
          data: restRequest.body,
          options: optionsParametros(restRequest.options));
      return response;
    } catch (error) {
      throw Exception("Erro ao executar a requisição " + error.toString());
    }
  }

  Future<Response> delete(RestRequest restRequest) async {
    try {
      var response = await dio.delete(restRequest.url,
          data: restRequest.body,
          options: optionsParametros(restRequest.options));
      return response;
    } catch (error) {
      throw Exception("Erro ao executar a requisição " + error.toString());
    }
  }

  Options optionsParametros(Map<String, dynamic> options) {
    return Options(
        followRedirects: false,
        validateStatus: (status) => true,
        headers: options);

    /*dynamic _tratarRetorno(Response response) {
    print("entrou no response do retorno.." + response.statusCode.toString());
    switch (response.statusCode) {
      case 200:
        return response.data;
      case 201:
        return response.data;
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
        throw Exception("Erro Desconhecido (Status: " +
            response.statusCode.toString() +
            ")");
      default:
        throw Exception("Erro Desconhecido do Servidor (Status: " +
            response.statusCode.toString() +
            ")");
    }
  }
  */
  }

/*
  Map<String, dynamic> addHeaderAuthorization(Map<String, dynamic>  options) {
    if (_token.isNotEmpty) {
      return ({
        "Content-Type": "application/json",
        "Authorization": "Bearer $_token"
      });
    }

    return ({"Content-Type": "application/json"});
  }*/
}
