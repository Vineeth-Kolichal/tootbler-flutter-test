import 'package:flutter_bloc/flutter_bloc.dart';
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
  List<String> city = ["All", "South Elvis", "Gwenborough"];
  List<EmployeeEntity> empListData = [];
  EmployeeScreenBloc(this.usecase) : super(EmployeeScreenState.initial()) {
    on<GetEmployeeList>((event, emit) async {
      emit(state.copyWith(isLoading: true, err: null));
      final data = await usecase(NoParams());
      final newState = data.fold((fail) {
        return state.copyWith(isLoading: false, empList: [], err: fail.error);
      }, (data) {
        empListData = data;
        return state.copyWith(isLoading: false, empList: data, err: null);
      });

      emit(newState);
    });
    on<Filter>((event, emit) {
      List<EmployeeEntity> newList = [];

      if (event.cityIndex == 0) {
        emit(state.copyWith(empList: empListData, cityIndex: event.cityIndex));
      } else {
        newList = empListData
            .where((element) => element.address?.city == city[event.cityIndex])
            .toList();
        emit(state.copyWith(empList: newList, cityIndex: event.cityIndex));
      }
    });
  }
}
