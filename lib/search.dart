import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          'Searching ',
          style: TextStyle(
            color: Color.fromARGB(255, 244, 253, 244),
            fontSize: 20.sp,
          ),
        ),
        actions: [
          IconButton(onPressed: (() {}), icon: Icon(Icons.search_outlined))
        ],
      ),
    );
  }
}
