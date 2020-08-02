import 'package:flutter/material.dart';
import 'package:partner/profile_main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff76569c),
        elevation: 0.0,
        title: Text(
          'Raahee',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            iconSize: 30.0,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileMain()));
            },
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[
              Material(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
                elevation: 25.0,
                shadowColor: Colors.deepPurple[900],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'My Profile',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        fontFamily: 'Gotham-Book',
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    CircleAvatar(
                      //backgroundColor: Colors.brown.shade800,
                      child: Image(
                        image: AssetImage('assets/images/avatar.png'),
                      ),
                      radius: 50.0,
                    ),
                    // TODO : Update photo taken from gallery
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                        fontFamily: "Sacramento",
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              Material(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0)),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff76569c),
                              Color(0xff8862b3),
                              Color(0xffad8ed4),
                              Colors.deepPurple[100],
                              Colors.white
                            ],
                          ),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.12,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'CHAT',
                                style: TextStyle(
                                  fontFamily: 'Gotham-Book',
                                  color: Colors.white,
                                  fontSize: 30.0,
                                ),
                              ),
                              Container(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/chat.png',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0)),
                          gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Colors.deepPurple[100],
                              Color(0xffad8ed4),
                              Color(0xff8862b3),
                              Color(0xff76569c),
                            ],
                          ),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            setState(() {});
                          },
                          minWidth: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.12,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/patient.png',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Text('PATIENTS',
                                  style: TextStyle(
                                    fontFamily: 'Gotham-Book',
                                    color: Colors.white,
                                    fontSize: 30.0,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
