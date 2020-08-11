import 'package:flutter/material.dart';

class Patients extends StatefulWidget {
  @override
  _PatientsState createState() => _PatientsState();
}

class _PatientsState extends State<Patients> {
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
            'Patients',
          ),
          backgroundColor: Color(0xff76569c),
        ),
        body: ListView(
          children: <Widget>[
            ButtonDesign(
              name: "Patient1",
              materialButton: () {},
            ),
            AddNotes(
              onPressed: () {},
            ),
            ButtonDesign(
              name: "Patient1",
              materialButton: () {},
            ),
            AddNotes(
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class AddNotes extends StatelessWidget {
  AddNotes({this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text("+Add Notes"),
      onPressed: onPressed,
    );
  }
}

class ButtonDesign extends StatelessWidget {
  ButtonDesign({this.name, this.materialButton});
  final String name;
  final Function materialButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      //padding: EdgeInsets.all(20.0),
      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      child: Material(
        color: Color(0xcc7a70ba),
        //color: Colors.pink[200],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
        elevation: 0.0,
        child: MaterialButton(
          onPressed: materialButton,
          // minWidth: MediaQuery.of(context).size.width * 0.1,
          height: MediaQuery.of(context).size.height * 0.09,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.pink[200],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
