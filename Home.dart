import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          backgroundColor: Colors.black54,
          appBar: AppBar(
            title: const Text('Home'),
            backgroundColor: Colors.brown[900],
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map<Widget>((Choice choice) {
                return Tab(
                  text: choice.title,
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: ChoicePage(
                  choice: choice,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class Choice {
 final String title;
  const Choice({this.title});
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Netflix'),
  Choice(title: 'Amazone Prime'),
  Choice(title: 'Hotstar'),
  Choice(title: 'Jio Cinema'),
  Choice(title: 'Eros Now'),
  Choice(title: 'Sony Liv'),
];

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    if(choice.title=='Netflix'){
    return                Container(
             margin: EdgeInsets.only(top:0.0),
      height: double.infinity,

      child: SingleChildScrollView(

        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 0.0,
        ),

        child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 0.0,left: 20.0),

                child:  Text("Latest",
                  style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      shadows:[Shadow(
                        blurRadius: 5.0,
                        color: Colors.brown,
                        offset: Offset(5.0, 5.0),
                      ),]
                  ),),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),

                height: 170,
                child: ListView(

                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/m.PNG',
                              width: 230,
                              height: 80 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 20.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 230,
                              height: 80 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 20.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 230,
                              height: 80 ,
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
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 170.0,left: 20.0),

                child:  Text("Category",
                  style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      shadows:[Shadow(
                        blurRadius: 5.0,
                        color: Colors.brown,
                        offset: Offset(4.0, 4.0),
                      ),]
                  ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 205.0,left: 20.0),
                width:240,
                height: 500.0,
                child: ListView(

                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/Capture23.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/Capture23.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/Capture23.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/Capture23.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/Capture23.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/Capture23.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/Capture23.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 240,
                              height: 160 ,
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
                      Container(
                        margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                        child: Card(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/logos/mid.PNG',
                              width: 240,
                              height: 160 ,
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
                    ]),
              ),
            ]),
      ),
    );
    }
    else if(choice.title =='Amazone Prime'){
      return    Container(
        margin: EdgeInsets.only(top:0.0),
        height: double.infinity,

        child: SingleChildScrollView(

          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 0.0,
          ),

          child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 0.0,left: 20.0),

                  child:  Text("Latest",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        shadows:[Shadow(
                          blurRadius: 5.0,
                          color: Colors.brown,
                          offset: Offset(5.0, 5.0),
                        ),]
                    ),),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),

                  height: 170,
                  child: ListView(

                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/m.PNG',
                                width: 230,
                                height: 80 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 230,
                                height: 80 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 230,
                                height: 80 ,
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
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170.0,left: 20.0),

                  child:  Text("Category",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        shadows:[Shadow(
                          blurRadius: 5.0,
                          color: Colors.brown,
                          offset: Offset(4.0, 4.0),
                        ),]
                    ),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 205.0,left: 20.0),
                  width:240,
                  height: 500.0,
                  child: ListView(

                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                      ]),
                ),
              ]),
        ),
      );
    }
    else if(choice.title =='Hotstar'){
      return  Container(
        margin: EdgeInsets.only(top:0.0),
        height: double.infinity,

        child: SingleChildScrollView(

          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 0.0,
          ),

          child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 0.0,left: 20.0),

                  child:  Text("Latest",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        shadows:[Shadow(
                          blurRadius: 5.0,
                          color: Colors.deepPurpleAccent,
                          offset: Offset(5.0, 5.0),
                        ),]
                    ),),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),

                  height: 170,
                  child: ListView(

                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/m.PNG',
                                width: 230,
                                height: 80 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 230,
                                height: 80 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 230,
                                height: 80 ,
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
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170.0,left: 20.0),

                  child:  Text("Category",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        shadows:[Shadow(
                          blurRadius: 5.0,
                          color: Colors.deepPurpleAccent,
                          offset: Offset(4.0, 4.0),
                        ),]
                    ),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 205.0,left: 20.0),
                  width:240,
                  height: 500.0,
                  child: ListView(

                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                      ]),
                ),
              ]),
        ),
      );
    }
    else if(choice.title =='Jio Cinema'){
      return    Container(
        margin: EdgeInsets.only(top:0.0),
        height: double.infinity,

        child: SingleChildScrollView(

          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 0.0,
          ),

          child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 0.0,left: 20.0),

                  child:  Text("Latest",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        shadows:[Shadow(
                          blurRadius: 5.0,
                          color: Colors.greenAccent,
                          offset: Offset(5.0, 5.0),
                        ),]
                    ),),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),

                  height: 170,
                  child: ListView(

                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/m.PNG',
                                width: 230,
                                height: 80 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 230,
                                height: 80 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 230,
                                height: 80 ,
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
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170.0,left: 20.0),

                  child:  Text("Category",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        shadows:[Shadow(
                          blurRadius: 5.0,
                          color: Colors.greenAccent,
                          offset: Offset(4.0, 4.0),
                        ),]
                    ),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 205.0,left: 20.0),
                  width:240,
                  height: 500.0,
                  child: ListView(

                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                      ]),
                ),
              ]),
        ),
      );
    }
    else if(choice.title =='Eros Now'){
      return   Container(
        margin: EdgeInsets.only(top:0.0),
        height: double.infinity,

        child: SingleChildScrollView(

          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 0.0,
          ),

          child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 0.0,left: 20.0),

                  child:  Text("Latest",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        shadows:[Shadow(
                          blurRadius: 5.0,
                          color: Colors.pinkAccent,
                          offset: Offset(5.0, 5.0),
                        ),]
                    ),),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),

                  height: 170,
                  child: ListView(

                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/m.PNG',
                                width: 230,
                                height: 80 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 230,
                                height: 80 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 230,
                                height: 80 ,
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
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170.0,left: 20.0),

                  child:  Text("Category",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        shadows:[Shadow(
                          blurRadius: 5.0,
                          color: Colors.pinkAccent,
                          offset: Offset(4.0, 4.0),
                        ),]
                    ),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 205.0,left: 20.0),
                  width:240,
                  height: 500.0,
                  child: ListView(

                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                      ]),
                ),
              ]),
        ),
      );
    }
    else if(choice.title =='Sony Liv'){
      return   Container(
        margin: EdgeInsets.only(top:0.0),
        height: double.infinity,

        child: SingleChildScrollView(

          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 0.0,
          ),

          child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 0.0,left: 20.0),

                  child:  Text("Latest",
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        shadows:[Shadow(
                          blurRadius: 5.0,
                          color: Colors.brown,
                          offset: Offset(5.0, 5.0),
                        ),]
                    ),),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),

                  height: 170,
                  child: ListView(

                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/m.PNG',
                                width: 230,
                                height: 80 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 230,
                                height: 80 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 20.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 230,
                                height: 80 ,
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
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170.0,left: 20.0),

                  child:  Text("Category",
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        shadows:[Shadow(
                          blurRadius: 5.0,
                          color: Colors.brown,
                          offset: Offset(4.0, 4.0),
                        ),]
                    ),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 205.0,left: 20.0),
                  width:240,
                  height: 500.0,
                  child: ListView(

                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 3.0,bottom: 20.0),
                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/Capture23.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                        Container(
                          margin: EdgeInsets.only(top: 0.0,bottom: 20.0),

                          child: Card(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/logos/mid.PNG',
                                width: 240,
                                height: 160 ,
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
                      ]),
                ),
              ]),
        ),
      );
    }
  }

}