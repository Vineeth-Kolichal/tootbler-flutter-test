import 'package:injectable/injectable.dart';
import 'package:toobler_flutter_test/core/api_endpoints/api_endpoints.dart';
import 'package:toobler_flutter_test/core/network/network_client.dart';
import 'package:toobler_flutter_test/features/employees/data/models/employee_model.dart';

abstract class EmployeeDataSource {
  Future<List<EmployeeModel>> getEmployeesData();
}

@LazySingleton(as: EmployeeDataSource)
@injectable
class EmployeeDataSourceImpl implements EmployeeDataSource {
  final NetworkClient client;

  EmployeeDataSourceImpl(this.client);
  @override
  Future<List<EmployeeModel>> getEmployeesData() async {
    try {
      List<dynamic> data =
          await client.getRequestWithoutToken(ApiEndpoints.users);
      List<EmployeeModel> empList = [];
      for (var emp in data) {
        empList.add(EmployeeModel.fromJson(emp));
      }
      return empList;
    } catch (e) {
      rethrow;
    }
  }
}
