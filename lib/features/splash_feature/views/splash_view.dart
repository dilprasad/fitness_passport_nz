import 'package:FitnessPassport/core/globals/constants.dart';
import 'package:FitnessPassport/features/home_feature/home_view.dart';
import 'package:FitnessPassport/features/login_feature/views/login_view.dart';
import 'package:FitnessPassport/features/home_feature/main_page.dart';
import 'package:FitnessPassport/features/splash_feature/views/splash_offline_view.dart';
import 'package:FitnessPassport/services/network/connection_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late ConnectionCheck _connectionCheck;

  @override
  void initState() {
    super.initState();
    _connectionCheck = ConnectionCheck();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 2));
    checkConnection();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  navigateToLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MainPage()),
      // MaterialPageRoute(
      //     builder: (context) => const ProfileView(
      //           hideStatus: false,
      //         )),
    );
  }

  navigateToOffline() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SplashOfflineView()),
    );
  }

  checkConnection() {
    _connectionCheck.internetStatusController.stream.listen((event) {
      if (event == EInternetStatus.iOnline) {
        FlutterNativeSplash.remove();
        navigateToLogin();
      } else if (event == EInternetStatus.iOffline) {
        FlutterNativeSplash.remove();
        navigateToOffline();
      }
    });
  }
}
