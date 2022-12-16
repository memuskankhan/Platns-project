import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login.webp'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                padding: EdgeInsets.only(left: 35, top: 90),
                child: Text(
                  'Welcome\nBack',
                  style: TextStyle(
                    color: Color.fromARGB(255, 86, 158, 79),
                    fontSize: 33.sp,
                  ),
                )),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    left: 35,
                    right: 35),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 52, 107, 54))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white10)),
                        hintText: 'Email',
                        fillColor: Color.fromARGB(255, 147, 225, 150),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 50, 105, 52))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white10)),
                        hintText: 'Password',
                        fillColor: Color.fromARGB(255, 147, 225, 150),
                        filled: true,
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
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 147, 225, 150),
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color.fromARGB(255, 147, 225, 150),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pushNamed(context, 'signup');
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
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 10.sp,
                              decoration: TextDecoration.underline,
                              color: Color.fromARGB(255, 147, 225, 150),
                            ),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              fontSize: 10.sp,
                              decoration: TextDecoration.underline,
                              color: Color.fromARGB(255, 147, 225, 150),
                            ),
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
