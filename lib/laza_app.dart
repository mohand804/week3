import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/routing/app_router.dart';
import 'package:week3/core/routing/routes.dart';

class LazaApp extends StatelessWidget {
  final AppRouter appRouter;
  const LazaApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        title: 'Laza App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Raleway',
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.loginScreen,
      ),
    );
  }
}
