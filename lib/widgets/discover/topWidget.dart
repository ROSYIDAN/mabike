import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopWidget extends StatefulWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TopWidgetState createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 22.0),
        child: Image.asset(
          "images/Menu.png",
          width: 35,
          height: 35,
        ),
      ),
    );
  }
}
