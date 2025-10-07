import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:week3/core/networking/api_service.dart';
import 'package:week3/core/networking/dio_factory.dart';
import 'package:week3/features/auth/sign_up/data/api/signup_api_service.dart';
import 'package:week3/features/auth/sign_up/data/repo/signup_repo.dart';
import 'package:week3/features/auth/sign_up/logic/cubit/signup_cubit.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // signup
  getIt.registerLazySingleton<SignupApiService>(() => SignupApiService(dio));
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
