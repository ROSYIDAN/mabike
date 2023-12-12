// main.dart

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
// import 'package:mabike/discoverPage.dart';
import 'package:mabike/loginPage.dart';
// import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
