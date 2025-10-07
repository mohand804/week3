import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3/core/di/dependency_injection.dart';
import 'package:week3/core/routing/routes.dart';
import 'package:week3/features/auth/sign_up/data/repo/signup_repo.dart';
import 'package:week3/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:week3/features/auth/sign_up/ui/sign_up_screen.dart';
import 'package:week3/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignupCubit(getIt<SignupRepo>()),
            child: const SignUpScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
