import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:toobler_flutter_test/core/api_endpoints/api_endpoints.dart';
import 'package:toobler_flutter_test/core/network_exceptions/custom_exception.dart';
import 'package:toobler_flutter_test/features/employees/data/datasources/employee_data_source.dart';
import 'package:toobler_flutter_test/features/employees/data/models/employee_model.dart';

import 'employee_data_source_test.mocks.dart';

//class MockDio extends Mock implements Dio {}

@GenerateMocks([Dio])
void main() {
  const url = "${ApiEndpoints.baseUrl}${ApiEndpoints.users}";
  late EmployeeDataSourceImpl employeeDataSource;
  late Dio mockDio;

  setUp(() {
    mockDio = MockDio();
    employeeDataSource = EmployeeDataSourceImpl(mockDio);
  });

  void setUpMockDioSuccess() {
    when(mockDio.get(url)).thenAnswer(
      (_) async => Response(requestOptions: RequestOptions(path: url), data: [
        {"id": 1, "name": "vineeth"}
      ]),
    );
  }

  void setUpMockDioError() {
    when(mockDio.get(url))
        .thenThrow((_) async => CustomException.otherException("Error"));
  }

  group('EmployeeDataSourceImpl Tests', () {
    test("success", () async {
      List<EmployeeModel> exp = [
        const EmployeeModel(
            id: 1,
            name: "Vineeth",
            username: null,
            email: null,
            address: null,
            phone: null,
            website: null,
            company: null)
      ];
      setUpMockDioSuccess();
      final res = await employeeDataSource.getEmployeesData();
      expect(res, exp);
    });

    test("Error", () async {
      setUpMockDioError();

      try {
        await employeeDataSource.getEmployeesData();
      } catch (e) {
        expect(e, CustomException.otherException("Error"));
      }
    });
  });
}
