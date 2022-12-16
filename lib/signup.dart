import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/signup.jpg'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              'Sign Up',
              style: TextStyle(
                  fontSize: 30.sp, color: Color.fromARGB(255, 220, 238, 218)),
            ),
            elevation: 0),
        body: Stack(
          children: [
            Container(
                padding: EdgeInsets.only(left: 35, top: 90),
                child: Container(
                  child: Text(
                    'Create\nAccount',
                    style: TextStyle(
                      color: Color.fromARGB(255, 230, 250, 231),
                      fontSize: 20.sp,
                    ),
                  ),
                )),
            SizedBox(
              height: 20.h,
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.28,
                    left: 35,
                    right: 35),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 219, 243, 220))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 250, 250))),
                        hintText: 'Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 236, 243, 236))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color.fromARGB(247, 251, 244, 244))),
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 237, 255, 237))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color.fromARGB(225, 255, 255, 255))),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 27.sp,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 232, 255, 233)),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Color.fromARGB(255, 221, 236, 223),
                        child: IconButton(
                          color: Color.fromARGB(255, 111, 188, 110),
                          onPressed: () {
                            Navigator.pushNamed(context, 'homescreen');
                          },
                          icon: Icon(Icons.arrow_forward),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Log in Profile',
                            style: TextStyle(
                                fontSize: 15.sp,
                                decoration: TextDecoration.underline,
                                color: Color.fromARGB(255, 225, 238, 226)),
                          )),
                    ],
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
