import 'package:flutter/material.dart';
import 'package:mabike/constant.dart';

class RentPage extends StatefulWidget {
  const RentPage({Key? key}) : super(key: key);

  @override
  _RentPageState createState() => _RentPageState();
}

class _RentPageState extends State<RentPage> {
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
                  Text("Rent Page"),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
