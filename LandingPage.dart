import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,

                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logos/bk.PNG'),
                        fit: BoxFit.fill)),
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0,left: 30.0),
                child: Text("Gallery",
                  style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      shadows:[Shadow(
                        blurRadius: 5.0,
                        color: Colors.black,
                        offset: Offset(7.0, 7.0),
                      ),]
                  ),),

              ),
              Container(
                height: double.infinity,

                child: SingleChildScrollView(

                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 70.0,
                  ),

                  child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20),
                          height: 240,

                          child: Stack(children: <Widget>[
                            Container(
                              // margin: EdgeInsets.symmetric(vertical: 20.0),

                              height: 240,
                              child: ListView(

                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
                                      child: Card(

                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/logos/Capture23.PNG',
                                            width: 260,
                                            height: 100 ,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(7.0),
                                        ),
                                        elevation: 15.0,
                                        shadowColor: Colors.black,
                                        margin: EdgeInsets.all(5.0),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.0,
                                      width: 15.0,

                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 20.0,bottom: 20.0),

                                      child: Card(

                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/logos/mid.PNG',
                                            width: 260,
                                            height: 100 ,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(7.0),
                                        ),
                                        elevation: 15.0,
                                        shadowColor: Colors.black,
                                        margin: EdgeInsets.all(5.0),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.0,
                                      width: 15.0,

                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 20.0,bottom: 20.0),

                                      child: Card(

                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/logos/mid.PNG',
                                            width: 260,
                                            height: 100 ,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(7.0),
                                        ),
                                        elevation: 15.0,
                                        shadowColor: Colors.brown,
                                        margin: EdgeInsets.all(5.0),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.0,
                                      width: 15.0,
                                    ),
                                  ]),
                            ),
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 260.0,bottom: 20,left: 15.0),

                          child:  Text("Categories",
                            style: TextStyle(
                                color: Colors.deepOrangeAccent,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                shadows:[Shadow(
                                  blurRadius: 5.0,
                                  color: Colors.black,
                                  offset: Offset(7.0, 7.0),
                                ),]
                            ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 330.0,bottom: 20,left: 20.0),
                          height: 60.0,
                          width: 270.0,
                          child: Text("     Material",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 45.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/logos/bk.PNG"),
                                  fit: BoxFit.fill),

                              borderRadius: BorderRadius.circular(10.0),
                              // color: Colors.deepPurple,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black87,
                                  blurRadius: 5.0, // soften the shadow
                                  spreadRadius: 4.0, //extend the shadow
                                  offset: Offset(
                                    4.0, // Move to right 10  horizontally
                                    4.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ]
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 420.0,bottom: 20,left:130.0),
                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/logos/n.PNG"),
                                  fit: BoxFit.fill),

                              borderRadius: BorderRadius.circular(10.0),
                              // color: Colors.deepPurple,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black87,
                                  blurRadius: 5.0, // soften the shadow
                                  spreadRadius: 4.0, //extend the shadow
                                  offset: Offset(
                                    4.0, // Move to right 10  horizontally
                                    4.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ]
                          ),
                          child: new RawMaterialButton(
                            onPressed: () {
                              //   Navigator.pushAndRemoveUntil(
                              //     context,
                              //   MaterialPageRoute(builder: (_) => Home()),
                              //      (Route<dynamic> route) => false);
                            },
                          ),
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
