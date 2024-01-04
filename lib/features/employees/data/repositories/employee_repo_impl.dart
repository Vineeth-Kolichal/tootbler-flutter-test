import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:toobler_flutter_test/core/failure/failures.dart';
import 'package:toobler_flutter_test/features/employees/data/datasources/employee_data_source.dart';
import 'package:toobler_flutter_test/features/employees/domain/entities/employee_entity.dart';
import 'package:toobler_flutter_test/features/employees/domain/repositories/employee_repo.dart';

@LazySingleton(as: EmployeeRepo)
@injectable
class EmployeeRepoImpsl implements EmployeeRepo {
  final EmployeeDataSource dataSource;

  EmployeeRepoImpsl(this.dataSource);
  @override
  Future<Either<Failure, List<EmployeeEntity>>> getEmployees() async {
    try {
      final data = await dataSource.getEmployeesData();
      return Right(data);
    } catch (e) {
      return Left(ApiRequestFailure(e.toString()));
    }
  }
}
