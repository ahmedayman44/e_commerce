import 'package:e_commerce/presentation/resources/app_routes.dart';
import 'package:e_commerce/presentation/resources/app_theme.dart';
import 'package:e_commerce/presentation/splash/splash_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal();
  static final _instance = MyApp._internal();
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute:
          RouteGenerator.getRoute, // ToDo function routes in getRoute
      initialRoute: Routes.splashRoute, // To Start from splashscreen
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
