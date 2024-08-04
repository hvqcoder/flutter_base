import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_api_service.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
}
