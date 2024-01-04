import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:toobler_flutter_test/core/api_endpoints/api_endpoints.dart';
import 'package:toobler_flutter_test/features/employees/data/models/employee_model.dart';

import '../../../../core/network_exceptions/custom_exception.dart';

abstract class EmployeeDataSource {
  Future<List<EmployeeModel>> getEmployeesData();
}

@LazySingleton(as: EmployeeDataSource)
@injectable
class EmployeeDataSourceImpl implements EmployeeDataSource {
  final Dio dio;

  EmployeeDataSourceImpl(this.dio);
  @override
  Future<List<EmployeeModel>> getEmployeesData() async {
    try {
      final resp = await dio.get(ApiEndpoints.users);
      List<dynamic> data = resp.data;
      List<EmployeeModel> empList = [];
      for (var emp in data) {
        empList.add(EmployeeModel.fromJson(emp));
      }
      return empList;
    } on DioException catch (e) {
      throw CustomException.fromDioError(e);
    } catch (e) {
      throw CustomException.otherException(e.toString());
    }
  }
}
