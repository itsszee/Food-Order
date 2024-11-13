import 'package:d_info/d_info.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/view/page/home.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void login() {
    String email = _emailController.text;
    String password = _passwordController.text;
  
    if (email == "test@gmail.com" && password == "123") {
      
      Get.off(() => HomePage());
    } else {
      
      DInfo.snackBarError(context, "Email atau Password salah!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  const Text(
                    "Login",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(35),
                  const Center(
                    child: Icon(
                      Icons.account_circle, 
                      size: 200, 
                      color: Colors.orange,
                    ),
                  ),
                  const Gap(30),
                  MyTextField(
                    controller: _emailController,
                    hintText: "Email",
                    icon: Icons.email,
                    obscureText: false,
                  ),
                  const Gap(10),
                  MyTextField(
                    controller: _passwordController,
                    hintText: "Password",
                    icon: Icons.password,
                    obscureText: true,
                  ),
                  const Gap(50),
                  // Button
                  ButtonPrimary(
                    buttonText: "Login",
                    onPressedAction: login,
                  ),
                  const Gap(40),
                  const Center(
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  const Gap(10),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const RegisterPage());
                      },
                      child: const Text(
                        "Belum punya akun? Register",
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  const Gap(15),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue,
                          ),
                          child: const Center(
                            child: Text(
                              "Facebook",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Gap(30),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: const Center(
                            child: Text(
                              "Gmail",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonPrimary extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressedAction;

  const ButtonPrimary({
    super.key,
    required this.buttonText,
    required this.onPressedAction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressedAction,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(buttonText),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white, 
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      obscureText: obscureText,
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Register Page",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(20),
              MyTextField(
                controller: emailController,
                hintText: "Email",
                icon: Icons.email,
                obscureText: false,
              ),
              const Gap(10),
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                icon: Icons.password,
                obscureText: true,
              ),
              const Gap(10),
              MyTextField(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                icon: Icons.lock,
                obscureText: true,
              ),
              const Gap(20),
              ButtonPrimary(
                buttonText: "Register",
                onPressedAction: () {
                  String password = passwordController.text;
                  String confirmPassword = confirmPasswordController.text;

                  if (password == confirmPassword) {
                    DInfo.snackBarSuccess(context, "Pendaftaran berhasil!");
                  } else {
                    DInfo.snackBarError(context, "Password tidak cocok!");
                  }
                },
              ),
              const Gap(20),
              Center(
                child: TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    "Kembali ke Login",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
  