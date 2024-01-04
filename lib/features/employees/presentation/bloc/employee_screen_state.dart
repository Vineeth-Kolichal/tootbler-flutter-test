part of 'employee_screen_bloc.dart';

@freezed
class EmployeeScreenState with _$EmployeeScreenState {
  const factory EmployeeScreenState({required int cityIndex}) = _Initial;
  factory EmployeeScreenState.initial() =>
      const EmployeeScreenState(cityIndex: 0);
}
