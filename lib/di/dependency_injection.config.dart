// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:todo_list/cubit/todos_cubit.dart' as _i735;
import 'package:todo_list/data/repository/todos_repository.dart' as _i369;
import 'package:todo_list/data/service/analytics_service.dart' as _i31;
import 'package:todo_list/navigation/app_router.dart' as _i924;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i924.AppRouter>(() => _i924.AppRouter());
    gh.lazySingleton<_i369.TodosRepository>(
      () => _i369.TodosRepository(),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i31.AnalyticsService>(() => _i31.AnalyticsService());
    gh.factory<_i735.TodosCubit>(
        () => _i735.TodosCubit(todosRepository: gh<_i369.TodosRepository>()));
    return this;
  }
}
