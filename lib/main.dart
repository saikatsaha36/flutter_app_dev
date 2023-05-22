import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostad_flutter_batch_two/ui/state_managers/auth_controller.dart';
import 'package:ostad_flutter_batch_two/ui/state_managers/bottom_navigation_bar_controller.dart';
import 'package:ostad_flutter_batch_two/ui/state_managers/category_controller.dart';
import 'package:ostad_flutter_batch_two/ui/state_managers/home_controller.dart';
import 'package:ostad_flutter_batch_two/ui/state_managers/user_auth_controller.dart';
import 'package:ostad_flutter_batch_two/ui/state_managers/user_profile_controller.dart';
import 'ui/screens/splash_screen.dart';
import 'ui/utils/app_colors.dart';

void main() {
  runApp(const CraftyBay());
}

class CraftyBay extends StatelessWidget {
  const CraftyBay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GetXBindings(),
      home: const SplashScreen(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            textStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              letterSpacing: 0.6,
            ),
          ),
        ),
      ),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 1,
          titleTextStyle: TextStyle(
            color: greyColor,
            fontWeight: FontWeight.w500,
            fontSize: 18
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            textStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              letterSpacing: 0.6,
            ),
          ),
        ),
      ),
    );
  }
}

class GetXBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavigationBarController());
    Get.put(UserAuthController());
    Get.put(AuthController());
    Get.put(UserProfileController());
    Get.put(HomeController());
    Get.put(CategoryController());
  }
}

