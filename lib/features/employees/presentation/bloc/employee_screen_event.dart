part of 'employee_screen_bloc.dart';

@freezed
class EmployeeScreenEvent with _$EmployeeScreenEvent {
  const factory EmployeeScreenEvent.getEmployeeList() = GetEmployeeList;
  const factory EmployeeScreenEvent.filter({required int cityIndex}) = Filter;
}
