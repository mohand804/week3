import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:week3/core/networking/api_service.dart';
import 'package:week3/core/networking/dio_factory.dart';
import 'package:week3/features/auth/login/data/api/login_api_service.dart';
import 'package:week3/features/auth/login/data/api/user_info_api_service.dart';
import 'package:week3/features/auth/login/data/repo/login_repo.dart';
import 'package:week3/features/auth/login/data/repo/user_info_repo.dart';
import 'package:week3/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:week3/features/auth/login/logic/cubit/user_info_cubit.dart';
import 'package:week3/features/auth/sign_up/data/api/signup_api_service.dart';
import 'package:week3/features/auth/sign_up/data/repo/signup_repo.dart';
import 'package:week3/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:week3/features/home/data/api/categories_api_service.dart';
import 'package:week3/features/home/data/api/products_api_service.dart';
import 'package:week3/features/home/data/repo/categories_repo.dart';
import 'package:week3/features/home/data/repo/products_repo.dart';
import 'package:week3/features/home/logic/cubit/categories_cubit.dart';
import 'package:week3/features/home/logic/cubit/products_cubit.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // signup
  getIt.registerLazySingleton<SignupApiService>(() => SignupApiService(dio));
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
  // login
  getIt.registerLazySingleton<LoginApiService>(() => LoginApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // categories
  getIt.registerLazySingleton<CategoriesApiService>(
    () => CategoriesApiService(dio),
  );
  getIt.registerLazySingleton<CategoriesRepo>(() => CategoriesRepo(getIt()));
  getIt.registerFactory<CategoriesCubit>(() => CategoriesCubit(getIt()));
  // products
  getIt.registerLazySingleton<ProductsApiService>(
    () => ProductsApiService(dio),
  );
  getIt.registerLazySingleton<ProductsRepo>(() => ProductsRepo(getIt()));
  getIt.registerFactory<ProductsCubit>(() => ProductsCubit(getIt()));
  // user info
  getIt.registerLazySingleton<UserInfoApiService>(
    () => UserInfoApiService(dio),
  );
  getIt.registerLazySingleton<UserInfoRepo>(() => UserInfoRepo(getIt()));
  getIt.registerFactory<UserInfoCubit>(() => UserInfoCubit(getIt()));
}
