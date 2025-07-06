// final getIt = GetIt.instance;

// Future<void> setup() async {
//   Dio dio = DioFactory.getDio();
//   getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
// //Login
//   getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
//   getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

//   //SignUp
//   getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
//   getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

//   //Home
//   getIt.registerLazySingleton<HomeRepoImpl>(() => HomeRepoImpl(getIt()));

//   //Search
//   getIt.registerLazySingleton<SearchRepoImp>(() => SearchRepoImp(getIt()));
// }
