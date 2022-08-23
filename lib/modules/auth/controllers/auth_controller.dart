import 'package:auth_firebase_flutter_getx/modules/auth/screens/login_screen.dart';
import 'package:auth_firebase_flutter_getx/modules/home/screens/home_screen.dart';
import 'package:auth_firebase_flutter_getx/routes/app_routes.dart';
import 'package:auth_firebase_flutter_getx/services/firebase_auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuthServices firebaseAuthServices = FirebaseAuthServices();
  Rxn<User> firebaseUser = Rxn<User>();
  @override
  void onReady() {
    //run every time auth state changes
    ever(firebaseUser, handleAuthChanges);

    firebaseUser.bindStream(firebaseAuthServices.user);
    super.onReady();
  }

  handleAuthChanges(firebaseUser) {
    if (firebaseUser == null) {
      Get.toNamed(Routes.LOGIN);
    } else {
      Get.toNamed(Routes.HOME);
    }
  }
}
