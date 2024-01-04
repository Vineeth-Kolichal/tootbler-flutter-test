import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:toobler_flutter_test/core/api_endpoints/api_endpoints.dart';
import 'package:toobler_flutter_test/core/network_exceptions/custom_exception.dart';
import 'package:toobler_flutter_test/features/employees/data/datasources/employee_data_source.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late EmployeeDataSourceImpl dataSource;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    dataSource = EmployeeDataSourceImpl(mockDio);
  });

  group('getEmployeesData', () {
    // test('returns a list of EmployeeModels on successful response', () async {
    //   // Mock Dio response
    //   when(() => mockDio.get(ApiEndpoints.users)).thenAnswer(
    //     (realInvocation)async,
    //   );

    //   final employees = await dataSource.getEmployeesData();

    //   expect(employees, [
    //     EmployeeModel(
    //         id: 1,
    //         name: "Vineeth",
    //         username: "vinee",
    //         email: "vinee.kcl@gmail.com",
    //         address: Address(
    //             street: "abc", suite: "def", city: "ghi", zipcode: 'zipcode'),
    //         phone: "9074492664",
    //         website: "vineethchandran.live",
    //         company:
    //             Company(name: 'toobler', catchPhrase: "catchPhrase", bs: "bs")),
    //   ]);

    //   // Verify Dio interaction
    //   verify(() => mockDio.get(ApiEndpoints.users)).called(1);
    // });

    test('throws a CustomException on DioError', () async {
      when(() => mockDio.get(ApiEndpoints.users)).thenThrow(
          DioException.badResponse(
              statusCode: 404,
              requestOptions: RequestOptions(),
              response: Response(requestOptions: RequestOptions())));

      try {
        await dataSource.getEmployeesData();
        fail('Should have thrown a CustomException');
      } on CustomException catch (_) {}
    });
  });
}
