part of 'employee_screen_bloc.dart';

@freezed
class EmployeeScreenState with _$EmployeeScreenState {
  const factory EmployeeScreenState(
      {required int cityIndex,
      required bool isLoading,
      required String? err,
      required List<EmployeeEntity> empList}) = _Initial;
  factory EmployeeScreenState.initial() => const EmployeeScreenState(
        cityIndex: 0,
        empList: [],
        err: null,
        isLoading: false,
      );
}
