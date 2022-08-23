import 'package:auth_firebase_flutter_getx/firebase_options.dart';
import 'package:auth_firebase_flutter_getx/modules/auth/controllers/auth_controller.dart';
import 'package:auth_firebase_flutter_getx/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put<AuthController>(AuthController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login App',
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
    );
  }
}
