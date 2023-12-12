import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mabike/constant.dart';
import 'package:mabike/widgets/navbar.dart';
import 'package:get/get.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "images/logo.png",
          height: 65,
          width: 90,
        ),
        Text(
          "MABIKE",
          style: TextStyle(
            fontSize: 25,
            color: warna1,
          ),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}

class FormInputWidget extends StatelessWidget {
  const FormInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: TextField(
            style: TextStyle(fontSize: 15),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 8, left: 10),
              labelText: "Enter registered email",
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.email,
                color: warna1,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.5),
                borderSide: BorderSide(color: Colors.white),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 50,
          child: TextField(
            style: TextStyle(fontSize: 15),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 8, left: 10),
              labelText: "Enter Password",
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.lock,
                color: warna1,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.5),
                borderSide: BorderSide(color: Colors.white),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        const SizedBox(height: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                // Add your action when "Forgot Password?" is pressed
                print("Forgot Password pressed");
                // Add code to handle forgot password action, like navigating to a forgot password screen
              },
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.5),
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: warna1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Get.to(() => const NavBar()),
      style: ElevatedButton.styleFrom(backgroundColor: warna1),
      child: SizedBox(
          width: double.infinity,
          child: Text(
            "LOG IN",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: bold,
              fontSize: 16,
              fontFamily: GoogleFonts.inter().fontFamily,
            ),
          )),
    );
  }
}

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 270),
        InkWell(
          onTap: () {
            // Add your action when "Don't have an account? Sign Up" is pressed
            print("Don't have an Account pressed");
            // Add code to handle the action, like navigating to a sign-up screen
          },
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.5),
              color: Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                    color: warna1,
                  ),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        color: warna1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Form(
            child: Column(
              children: [
                LogoWidget(),
                FormInputWidget(),
                SizedBox(height: 10),
                LoginButtonWidget(),
                DontHaveAccountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
