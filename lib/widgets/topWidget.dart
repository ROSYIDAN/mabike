import 'package:flutter/material.dart';
import 'package:mabike/constant.dart';

class TopWidget extends StatelessWidget implements PreferredSizeWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bg,
      title: const Text("Search Bar"),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
