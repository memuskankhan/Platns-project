import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plants/plantlist.dart';
import 'package:plants/profile.dart';
import 'package:sizer/sizer.dart';

class homescreen extends StatefulWidget {
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(shrinkWrap: true, children: [
        SizedBox(
          height: 3,
        ),
        Container(
          color: Color(0xff399d63),
          height: 8.h,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushNamed(context, 'profile');
                },
              ),
              FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  mini: true,
                  elevation: 0,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                    size: 17,
                  )),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(14),
          child: Text(
            'Top Picks',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey.withOpacity(0.3),
            isScrollable: true,
            tabs: [
              Tab(
                  child: Text(
                'Top',
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              )),
              Tab(
                  child: Text(
                'Indoor',
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              )),
              Tab(
                  child: Text(
                'Outdoor',
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              )),
              Tab(
                  child: Text(
                'Plants',
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 200,
          child: TabBarView(
            controller: tabController,
            children: [
              platnlist(),
              platnlist(),
              platnlist(),
              platnlist(),
            ],
          ),
        )
      ]),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 40, right: 50)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'profile');
                },
                icon: Icon(
                  Icons.person_add,
                  color: Color.fromARGB(255, 88, 159, 91),
                )),
            SizedBox(
              width: 50.w,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'search');
                },
                icon: Icon(Icons.search_outlined,
                    color: Color.fromARGB(255, 88, 159, 91))),
          ],
        ),
      ),
    );
  }
}
