import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mabike/EventPages/eventPage.dart';
import 'package:mabike/constant.dart';
// import 'package:mabike/widgets/navbar.dart';

class DetailEventPage extends StatelessWidget {
  const DetailEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Form(
                child: Column(children: [
                  const Text("Detail Event"),
                  ElevatedButton(
                      onPressed: () => Get.to(() => const EventPage()),
                      child: const Text("Goto Detail evenet"))
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
