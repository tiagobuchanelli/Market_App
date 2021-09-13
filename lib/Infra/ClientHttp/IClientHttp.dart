// ignore_for_file: camel_case_types

import 'package:dio/dio.dart';
import 'package:restaurant_app/Domain/Entities/RestRequest.dart';

abstract class IClientHttp<T> {
  Future<Response> executarRequisicao(RestRequest restRequest);
}
