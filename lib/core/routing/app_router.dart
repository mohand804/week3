import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/di/dependency_injection.dart';
import 'package:week3/core/routing/routes.dart';
import 'package:week3/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:week3/features/auth/login/logic/cubit/user_info_cubit.dart';
import 'package:week3/features/auth/login/ui/login_screen.dart';
import 'package:week3/features/auth/logout/logic/cubit/logout_cubit.dart';
import 'package:week3/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:week3/features/auth/sign_up/ui/sign_up_screen.dart';
import 'package:week3/features/home/logic/cubit/categories_cubit.dart';
import 'package:week3/features/home/logic/cubit/products_cubit.dart';
import 'package:week3/features/home/ui/home_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignUpScreen(),
          ),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<CategoriesCubit>()..getCategories(),
              ),
              BlocProvider(create: (context) => getIt<ProductsCubit>()),
              BlocProvider(
                create: (context) => getIt<UserInfoCubit>()..getUserInfo(),
              ),
              BlocProvider(create: (context) => getIt<LogoutCubit>()),
            ],
            child: const HomeScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
