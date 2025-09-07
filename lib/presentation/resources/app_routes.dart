import 'package:e_commerce/presentation/forget_password/forget_password._view.dart';
import 'package:e_commerce/presentation/login/login_view.dart';
import 'package:e_commerce/presentation/main/main_view.dart';
import 'package:e_commerce/presentation/onboarding/onboarding_view.dart';
import 'package:e_commerce/presentation/register/register_view.dart';
import 'package:e_commerce/presentation/resources/app_strings.dart';
import 'package:e_commerce/presentation/splash/splash_view.dart';
import 'package:e_commerce/presentation/store_detailes/store_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String onBoardingRoute = '/onBoarding';
  static const String mainRoute = "/main";
  static const String storeDetailesRoute = "/storeDetailes";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings seetings) {
    switch (seetings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgetPassword());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnboardingView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      case Routes.storeDetailesRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailsView());
      default:
        return unDefiendRoute();
    }
  }

  static Route<dynamic> unDefiendRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text(AppStrings.noRouteFound)),
          body: Center(child: Text(AppStrings.noRouteFound)),
        );
      },
    );
  }
}
