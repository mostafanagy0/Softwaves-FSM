import 'package:fsm/core/helpers/auth_helper.dart';
import 'package:fsm/features/auth/data/datasources/Auth_Remote_DataSource_Impl.dart';
import 'package:fsm/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:fsm/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fsm/features/auth/domain/repos/auth_repo.dart';
import 'package:fsm/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  // Dio dio = DioFactory.getDio();

  //auth
  getIt.registerLazySingleton<AppAuthHelper>(() => AppAuthHelper());

  // Data Source
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDatasourceImpl(authHelper: getIt()),
  );

  // Repository
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(authRemoteDataSource: getIt()),
  );

  // Cubit
  getIt.registerFactory(() => AuthCubit(getIt<AuthRepo>()));
}
