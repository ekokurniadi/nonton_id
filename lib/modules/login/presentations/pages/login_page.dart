import 'package:flutter/material.dart';
import 'package:nonton_id/core/constant/color_constant.dart';
import 'package:nonton_id/core/constant/image_constant.dart';
import 'package:nonton_id/modules/home/presentations/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 44),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                ImageConstant.logoApp,
                width: 219,
              ),
              const SizedBox(height: 104),
              const Text(
               'Masuk',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 32),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 2),
                decoration: BoxDecoration(
                  color: AppColors.textBoxColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  controller: usernameController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Username tidak boleh kosong';
                    }
                  
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    isCollapsed: true,
                    hintText: 'username',
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(
                        0.20,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white.withOpacity(
                        0.20,
                      ),
                      size: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 2),
                decoration: BoxDecoration(
                  color: AppColors.textBoxColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  controller: passwordController,
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Password tidak boleh kosong';
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    isCollapsed: true,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'password',
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(
                        0.20,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white.withOpacity(
                        0.20,
                      ),
                      size: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Text(
                    'Belum Punya Akun?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.60),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      letterSpacing: 0.5,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Daftar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(25),
        child: SizedBox(
          height: 45,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
            onPressed: () {
              if (formKey.currentState?.validate() == false) {
                return;
              }
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: const Text(
              'Masuk',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
                letterSpacing: 0.2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
