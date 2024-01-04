import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:toobler_flutter_test/core/base_usecase/base_usecase.dart';
import 'package:toobler_flutter_test/core/failure/failures.dart';
import 'package:toobler_flutter_test/features/employees/domain/entities/employee_entity.dart';
import 'package:toobler_flutter_test/features/employees/domain/repositories/employee_repo.dart';

@lazySingleton
@injectable
class GetEmployeeUsecase implements UseCase<List<EmployeeEntity>, NoParams> {
  final EmployeeRepo repo;

  GetEmployeeUsecase(this.repo);
  @override
  Future<Either<Failure, List<EmployeeEntity>>> call(NoParams params) {
    return repo.getEmployees();
  }
}
