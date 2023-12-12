import 'package:flutter/material.dart';
import 'package:mabike/constant.dart';
// import 'package:mabike/widgets/navbar.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

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
                  Text("Complete Details"),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
