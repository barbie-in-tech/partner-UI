import 'package:flutter/material.dart';
import 'package:partner/profile.dart';

class ProfileMain extends StatefulWidget {
  @override
  _ProfileMainState createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.purple[50]),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            'Profile',
          ),
          backgroundColor: Color(0xff76569c),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(40.0),
              //color: Colors.orangeAccent,
              border: Border(
                bottom: BorderSide(
                  width: 5,
                  color: Colors.deepPurple[900],
                ),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.22,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  //backgroundColor: Colors.brown.shade800,
                  child: Image(
                    image: AssetImage('assets/images/avatar.png'),
                  ),
                  radius: 60.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Name',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'Gotham-Book',
                        ),
                      ),
                      FlatButton(
                        child: Text(
                          '+ Edit Profile',
                          style: TextStyle(
                            color: Color(0xCC9C27B0),
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
