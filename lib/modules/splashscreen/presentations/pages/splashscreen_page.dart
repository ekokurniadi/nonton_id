import 'package:flutter/material.dart';
import 'package:nonton_id/core/constant/color_constant.dart';
import 'package:nonton_id/core/constant/image_constant.dart';
import 'package:nonton_id/modules/login/presentations/pages/login_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // Future.delayed(const Duration(seconds: 5), () {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => const LoginPage(),
    //     ),
    //   );
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Container(
            color: AppColors.primaryColor,
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.20,
          ),
          Stack(
            clipBehavior: Clip.hardEdge,
            alignment: Alignment.topCenter,
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.80,
                child: Image.asset(
                  ImageConstant.splashScreenBgImage,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.80,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [AppColors.primaryColor, Color(0x8C1C1A29)],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Image.asset(
                      ImageConstant.logoApp,
                      width: 219,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
