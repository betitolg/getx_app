import 'package:flutter/material.dart';
import 'package:g62_find_home/app/routes/app_views.dart';
import 'package:g62_find_home/app/routes/routes_name.dart';
import 'package:g62_find_home/core/utils/dependency_injection.dart';
import 'package:get/get.dart';

void main() {
  DependencyInjection.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: AppViews.getViews,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutesName.SPLASH,
    );
  }
}
