import 'package:dartz/dartz.dart';

import '../../../../core/failure/failures.dart';
import '../entities/employee_entity.dart';

abstract class EmployeeRepo {
  Future<Either<Failure, List<EmployeeEntity>>> getEmployees();
}
