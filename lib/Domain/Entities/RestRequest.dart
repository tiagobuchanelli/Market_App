import 'package:restaurant_app/Infra/Enums/Methods.dart';

class RestRequest {
  String url;
  Map<String, dynamic> body;
  Map<String, dynamic> options;
  MethodsRest method;

  RestRequest({
    required this.url,
    required this.body,
    required this.options,
    required this.method,
  });
}
