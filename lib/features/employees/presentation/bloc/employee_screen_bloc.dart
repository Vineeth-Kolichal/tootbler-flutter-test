import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_screen_event.dart';
part 'employee_screen_state.dart';
part 'employee_screen_bloc.freezed.dart';

class EmployeeScreenBloc
    extends Bloc<EmployeeScreenEvent, EmployeeScreenState> {
  EmployeeScreenBloc() : super(EmployeeScreenState.initial()) {
    on<GetEmployeeList>((event, emit) {
      emit(state.copyWith(cityIndex: event.cityIndex));
    });
  }
}
