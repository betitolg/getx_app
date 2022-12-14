import 'package:g62_find_home/app/data/providers/authentication_provider.dart';
import 'package:g62_find_home/app/data/repositories/authentication_repository.dart';
import 'package:get/get.dart';

abstract class DependencyInjection {
  static void initialize() {
    //Providers
    Get.put<AuthenticationProvider>(AuthenticationProvider());

//Repositories
    Get.put<AuthenticationRepository>(AuthenticationRepository());
  }
}
