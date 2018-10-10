import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_assignment/profile_page.dart';
import 'package:flutter_assignment/login_details_data.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() {
    return new LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  final userController = TextEditingController();
  final passController = TextEditingController();

  bottomModel(String msg) {
    return showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.pink
        ),
        child: Padding(
          padding: const EdgeInsets.all(
              18.0),
          child: Text(msg,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20.0
            )
          )
        )
      );
    });
  }

  @override
  void dispose() {
    userController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomLeft,
            stops: [0.0,1.0],
            colors: [
              const Color(0xfff59648),
              const Color(0xffff006a)
            ]
          )
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 100.0
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/logo.svg',
                  height: 250.0,
                  width: 250.0,
                  alignment: Alignment.topCenter,
                  allowDrawingOutsideViewBox: true,
                ),
                Container(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Card(
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.9,
                            height: MediaQuery.of(context).size.height*0.29,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(25.0),
                                  child: TextField(
                                    controller: userController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      icon: Icon(
                                        Icons.mail_outline,
                                        color: Colors.black,
                                        size: 30.0,
                                      ),
                                      hintText: "Enter a Username",
                                      hintStyle: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.3,
                                        color: Colors.black87
                                      ),
                                    )
                                  ),
                                ),
                                Container(
                                  width:MediaQuery.of(context).size.width*0.65,
                                  height: 1.0,
                                  color: Colors.grey[700],
                                ),
                                Padding(
                                  padding: EdgeInsets.all(25.0),
                                  child: TextField(
                                    controller: passController,
                                    obscureText: _obscureText,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      icon: Icon(
                                        Icons.lock_outline,
                                        size: 30.0,
                                        color: Colors.black,
                                      ),
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.3,
                                          color: Colors.black87
                                      ),
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _obscureText = !_obscureText;
                                          });
                                        },
                                        child: Icon(
                                          Icons.remove_red_eye,
                                          size: 25.0,
                                          color: Colors.black,
                                    ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height*0.29,
                        child: Container(
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            boxShadow:  [
                              new BoxShadow(
                                color: const Color(0xffff006a),
                                offset: new Offset(1.0, 1.0),
                                blurRadius: 10.0,
                              ),
                              new BoxShadow(
                                  color: const Color(0xfff59648),
                                  offset: new Offset(-1.0, -1.0),
                                  blurRadius: 10.0,
                              )
                            ],
                            gradient: new LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  const Color(0xffff006a),
                                  const Color(0xfff59648),
                                ],
                                stops: [0.0, 1.0],
                                ),
                          ),
                          child: MaterialButton(
                              highlightColor: Colors.transparent,
                              splashColor: const Color(0xffe00d62),
                              onPressed: () {
                                if(userController.text.trim() != "" && passController.text.trim() != "") {
                                  if (LoginDetails.checkUser(userController.text)) {
                                    if (LoginDetails.checkPass(userController.text, passController.text)) {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProfilePage()
                                          )
                                      );
                                    } else {
                                      bottomModel("Incorrect Password");
                                    }
                                  } else {
                                    bottomModel("User Does not Exist");
                                  }
                                } else {
                                  bottomModel("User and  Password cannot be empty");
                                }
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 60.0, vertical: 13.0
                                ),
                                child: Text( "LOGIN",
                                  style: TextStyle(
                                    fontSize: 27.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 0.3
                                  ),
                                )
                              ),
                          )
                        ),
                      )
                    ],
                  )
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}