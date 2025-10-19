import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/di/dependency_injection.dart';
import 'package:week3/laza_app.dart';

void main() async {
  mainCommon(Environment.dev);
  setupGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  mainCommon(Environment.dev);
}
