part of 'employee_screen_bloc.dart';

@freezed
class EmployeeScreenEvent with _$EmployeeScreenEvent {
  const factory EmployeeScreenEvent.getEmployeeList({required int cityIndex}) =
      GetEmployeeList;
}
