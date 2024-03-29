import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../api_endpoints/api_endpoints.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio get dioInstance => Dio(BaseOptions(baseUrl: ApiEndpoints.baseUrl));
}
