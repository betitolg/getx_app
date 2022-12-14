import 'package:g62_find_home/app/routes/routes_name.dart';
import 'package:g62_find_home/app/ui/views/login/login_binding.dart';
import 'package:g62_find_home/app/ui/views/login/login_view.dart';
import 'package:g62_find_home/app/ui/views/splash/splash_binding.dart';
import 'package:g62_find_home/app/ui/views/splash/splash_view.dart';
import 'package:get/route_manager.dart';

abstract class AppViews {
  static final getViews = [
    GetPage(
      name: RoutesName.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
        name: RoutesName.LOGIN,
        page: () => const LoginView(),
        binding: LoginBiding()),
  ];
}
