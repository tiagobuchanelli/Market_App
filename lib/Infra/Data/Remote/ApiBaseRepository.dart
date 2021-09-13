import 'package:restaurant_app/Domain/Entities/RestRequest.dart';
import 'package:restaurant_app/Domain/Interfaces/IApiRepository';
import 'package:restaurant_app/Infra/ClientHttp/IClientHttp.dart';
import 'package:restaurant_app/Infra/ClientHttp/UtilHttp.dart';
import 'package:restaurant_app/Infra/Enums/Methods.dart';

class ApiBaseRepository implements IApiRepository {
  late IClientHttp _clientHttp;
  String urlBase = "http://54.39.167.62";

  ApiBaseRepository(IClientHttp clientHttp) {
    _clientHttp = clientHttp;
  }

  Future _executarRequisicao(RestRequest requisicao) async {
    var dados = await _clientHttp.executarRequisicao(requisicao);

    return tratarRetornoRest(dados).data;
  }

  Future _configurarRequisicao(MethodsRest metodo, String urlMetodo,
      Map<String, dynamic> body, String token) async {
    if (token.isNotEmpty) {
      var requisicao = RestRequest(
        url: urlBase + urlMetodo,
        body: body,
        options: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token"
        },
        method: metodo,
      );

      return requisicao;
    } else {
      var requisicao = RestRequest(
        url: urlBase + urlMetodo,
        body: body,
        options: {
          "Content-Type": "application/json",
        },
        method: metodo,
      );

      return requisicao;
    }
  }

  @override
  Future buscarTodos(Map<String, dynamic> body, String token) async {
    await _executarRequisicao(await _configurarRequisicao(
        MethodsRest.Get, '/api/Login/validausuario/', body, token));
  }

  @override
  Future buscarPorId(Map<String, dynamic> body, String token, String id) async {
    await _executarRequisicao(await _configurarRequisicao(
        MethodsRest.Get, '/api/Login/validausuario/' + id, body, token));
  }

  @override
  Future adicionar(Map<String, dynamic> body, String token) async {
    await _executarRequisicao(await _configurarRequisicao(
        MethodsRest.Post, '/api/Login/validausuario/', body, token));
  }

  @override
  Future atualizar(Map<String, dynamic> body, String token) async {
    await _executarRequisicao(await _configurarRequisicao(
        MethodsRest.Put, '/api/Login/validausuario/', body, token));
  }

  @override
  Future excluir(Map<String, dynamic> body, String token) async {
    await _executarRequisicao(await _configurarRequisicao(
        MethodsRest.Delete, '/api/Login/validausuario/', body, token));
  }
}
