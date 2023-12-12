import 'package:flutter/material.dart';
import 'package:mabike/constant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: const Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Form(
                child: Column(children: [
                  Text("Profile Page"),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
