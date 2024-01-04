// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:toobler_flutter_test/core/dependancy_injection/modules/dio_module.dart'
    as _i10;
import 'package:toobler_flutter_test/core/network/network_client.dart' as _i8;
import 'package:toobler_flutter_test/features/employees/data/datasources/employee_data_source.dart'
    as _i4;
import 'package:toobler_flutter_test/features/employees/data/repositories/employee_repo_impl.dart'
    as _i6;
import 'package:toobler_flutter_test/features/employees/domain/repositories/employee_repo.dart'
    as _i5;
import 'package:toobler_flutter_test/features/employees/domain/usecases/get_employees_usecase.dart'
    as _i7;
import 'package:toobler_flutter_test/features/employees/presentation/bloc/employee_screen_bloc.dart'
    as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.lazySingleton<_i3.Dio>(() => dioModule.dioInstance);
    gh.lazySingleton<_i4.EmployeeDataSource>(
        () => _i4.EmployeeDataSourceImpl(gh<_i3.Dio>()));
    gh.lazySingleton<_i5.EmployeeRepo>(
        () => _i6.EmployeeRepoImpsl(gh<_i4.EmployeeDataSource>()));
    gh.lazySingleton<_i7.GetEmployeeUsecase>(
        () => _i7.GetEmployeeUsecase(gh<_i5.EmployeeRepo>()));
    gh.lazySingleton<_i8.NetworkClient>(() => _i8.NetworkClient(gh<_i3.Dio>()));
    gh.factory<_i9.EmployeeScreenBloc>(
        () => _i9.EmployeeScreenBloc(gh<_i7.GetEmployeeUsecase>()));
    return this;
  }
}

class _$DioModule extends _i10.DioModule {}
