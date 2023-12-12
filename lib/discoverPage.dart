import 'package:flutter/material.dart';
import 'package:mabike/constant.dart';
import 'package:mabike/widgets/topWidget.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DiscoverPageState createState() => _DiscoverPageState();
}

class SearchWideget extends StatelessWidget {
  const SearchWideget({Key? key}) : super(key: key);
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0),
      child: Container(
        width: 20,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.5),
        ),
        child: Row(children: [
          Icon(
            Icons.search,
            color: warna1,
          ),
          const SizedBox(width: 10),
          const Text('Search', style: TextStyle(color: Colors.grey)),
        ]),
      ),
    );
  }
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopWidget(),
      backgroundColor: bg,
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Discover Page"),
          ),
          SearchWideget(),
        ],
      ),
    );
  }
}
