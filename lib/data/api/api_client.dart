import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@injectable
@RestApi()
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(Dio dio) => _ApiClient(dio);

  ///Get
  @GET('')
  Future<String> exampleGet();

  ///Post
  @POST('')
  Future<String> examplePost();

  ///Put
  @PUT('')
  Future<String> examplePut();

  ///Delete
  @DELETE('')
  Future<String> exampleDelete();
}
