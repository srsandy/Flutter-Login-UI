import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProfilePage extends StatelessWidget {

  final TextStyle styleNumber = new TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontSize: 30.0

  );

  final TextStyle styleText = new TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 15.0,
      letterSpacing: 0.3
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80.0 ),
          child: Text('Profile'),
        ),
        backgroundColor: const Color(0xfff39235)
      ),
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height ,
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/logo.svg',
                      height: MediaQuery.of(context).size.height*0.3,
                      width: 250.0,
                      alignment: Alignment.topCenter,
                      allowDrawingOutsideViewBox: true,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 450.0 - 4.0,
                      decoration: new BoxDecoration(
                          gradient: new LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomLeft,
                              stops: [0.0,1.0],
                              colors: [
                                const Color(0xfff59648),
                                const Color(0xffff006a)
                              ]
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 50.0
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text("12",
                                          style: styleNumber
                                      ),
                                      Text("Posts",
                                          style: styleText
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text("23",
                                          style: styleNumber
                                      ),
                                      Text("Followers",
                                          style: styleText
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text("56",
                                          style: styleNumber
                                      ),
                                      Text("Following",
                                          style: styleText
                                      ),
                                    ],
                                  )

                                ],
                              ),
                            ),
                            SizedBox(width: 15.0),
                            Column(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Scott Colon",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 47.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      )
                                    ),
                                    SizedBox(height: 5.0,),
                                    Text("Photographer",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600
                                      )
                                    ),
                                    SizedBox(height: 25.0,),
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.7,
                                      child: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
                                        textDirection: TextDirection.ltr,
                                        softWrap: true,
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height*0.26,
                  left: MediaQuery.of(context).size.width*0.09,
                  child: MaterialButton(
                    onPressed: () {},
                    highlightColor: Colors.transparent,
                    splashColor: const Color(0xffe00d62),
                    child: Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        color: Color(0xffff006a),
                        borderRadius: BorderRadius.circular(100.0),
                        boxShadow:  [
                          new BoxShadow(
                            color: Colors.black45,
                            offset: new Offset(0.0, 2.0),
                            blurRadius: 7.0,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 55.0,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }

}