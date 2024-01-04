import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:toobler_flutter_test/core/base_usecase/base_usecase.dart';
import 'package:toobler_flutter_test/features/employees/domain/usecases/get_employees_usecase.dart';

import '../../domain/entities/employee_entity.dart';

part 'employee_screen_event.dart';
part 'employee_screen_state.dart';
part 'employee_screen_bloc.freezed.dart';

@injectable
class EmployeeScreenBloc
    extends Bloc<EmployeeScreenEvent, EmployeeScreenState> {
  final GetEmployeeUsecase usecase;
  EmployeeScreenBloc(this.usecase) : super(EmployeeScreenState.initial()) {
    on<GetEmployeeList>((event, emit) {
      usecase(NoParams()).then((data) {
        data.fold((fail) {}, (data) {
          print(data);
        });
      });

      // emit(state.copyWith(cityIndex: event.cityIndex));
    });
  }
}
