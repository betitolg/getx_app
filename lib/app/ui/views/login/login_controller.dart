import 'package:g62_find_home/app/data/models/request/request_authentication_model.dart';
import 'package:g62_find_home/app/data/repositories/authentication_repository.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  //Instances
  final _repositoryAuthentication = Get.find<AuthenticationRepository>();

  //Variables

  //Functions

  void _initialize() {}

  void doAuthentication() {
    try {
      final response =
          _repositoryAuthentication.authentication(RequestAuthenticationModel(
        email: "test@test",
        password: "123456",
      ));
    } catch (e) {
      Get.snackbar("Error", e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }
}
