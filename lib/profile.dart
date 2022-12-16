import 'package:plants/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 114, 195, 117),
          centerTitle: true,
          title: Text(
            'PROFILE',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.sp),
          ),
          elevation: 0),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50),
          child: Stack(children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 80),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/back.webp'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 70.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 20,
                      right: 20,
                    ),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: username,
                          decoration: InputDecoration(
                            labelText: 'UserName',
                            prefix: Icon(Icons.person),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myFocusedBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: email,
                          decoration: InputDecoration(
                            labelText: 'email',
                            prefix: Icon(Icons.email),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myFocusedBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: password,
                          decoration: InputDecoration(
                            labelText: 'password',
                            prefix: Icon(Icons.password),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myFocusedBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('DONE'),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 92, 158, 94),
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 20),
                            textStyle: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 15.5,
                    child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 111, 174, 114),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.edit,
                          size: 30,
                        )),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  OutlineInputBorder myInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide:
          BorderSide(color: Color.fromARGB(255, 111, 174, 114), width: 3),
    );
  }

  OutlineInputBorder myFocusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide:
          BorderSide(color: Color.fromARGB(255, 111, 174, 114), width: 3),
    );
  }
}
