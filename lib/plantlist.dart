import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class platnlist extends StatefulWidget {
  const platnlist({Key? key}) : super(key: key);

  @override
  State<platnlist> createState() => _platnlistState();
}

class _platnlistState extends State<platnlist> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Container(
            height: 200,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                getPlantCard(
                    'assets/images/outdoor.jpg', '25', 'OUTDOOR', 'Alo Vera'),
                SizedBox(
                  width: 15,
                ),
                getPlantCard(
                    'assets/images/indoor.webp', '30', 'INDOOR', 'Ficus'),
                SizedBox(
                  width: 15,
                ),
                getPlantCard(
                    'assets/images/plants.jpg', '35', 'HOME', 'Plants'),
                SizedBox(
                  width: 15,
                ),
                getPlantCard(
                    'assets/images/garden.webp', '45', 'GARDEN', 'Garden'),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 10.h,
          child: Padding(
            padding: EdgeInsets.only(left: 25, right: 10),
            child: Text(
              'Description.',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp),
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 20.h,
          width: 10.w,
          child: Padding(
            padding: EdgeInsets.only(left: 25, right: 10),
            child: Text(
              'Artificial plants are imitations of natural plants used for commercial or residential decoration home .',
              style: TextStyle(
                  color: Color.fromARGB(255, 94, 159, 96),
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp),
            ),
          ),
        ),
      ],
    );
  }

  getPlantCard(
      String imgPath, String price, String plantType, String PlantName) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 250.h,
            width: 70.w,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff399d63),
              ),
              height: 200.h,
              width: 50.w,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'FROM',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff8ac784)),
                        ),
                        Text(
                          '\$' + price,
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8ac784)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
                Image(
                  image: AssetImage(imgPath),
                  height: 165,
                ),
                Row(
                  children: [
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          plantType,
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 169, 220, 165)),
                        ),
                        Text(
                          PlantName,
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 219, 238, 217)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 5.0.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 160, 225, 163),
                              style: BorderStyle.solid,
                              width: 0.5.w),
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 143, 210, 145)),
                      child: Icon(
                        Icons.wb_sunny,
                        color: Colors.white.withOpacity(0.5),
                        size: 10.sp,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 5.0.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 160, 225, 163),
                              style: BorderStyle.solid,
                              width: 0.5.w),
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 143, 210, 145)),
                      child: Icon(
                        Icons.hot_tub,
                        color: Colors.white.withOpacity(0.5),
                        size: 10.sp,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 5.0.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 160, 225, 163),
                              style: BorderStyle.solid,
                              width: 0.5.w),
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 143, 210, 145)),
                      child: Icon(
                        Icons.brightness_4_sharp,
                        color: Colors.white.withOpacity(0.5),
                        size: 10.sp,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 5.0.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 160, 225, 163),
                              style: BorderStyle.solid,
                              width: 0.5.w),
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 143, 210, 145)),
                      child: Icon(
                        Icons.other_houses,
                        color: Colors.white.withOpacity(0.5),
                        size: 10.sp,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 5.0.h,
                        width: 10.w,
                        decoration: BoxDecoration(color: Color(0xff399d63)),
                        child: Icon(
                          Icons.help_outline,
                          color: Colors.white.withOpacity(0.4),
                          size: 10.sp,
                        ),
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 90, top: 200),
          child: Container(
            height: 5.0.h,
            width: 10.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.black),
            child: Center(
                child: Icon(
              Icons.shopping_cart_sharp,
              color: Colors.white,
            )),
          ),
        )
      ],
    );
  }
}
