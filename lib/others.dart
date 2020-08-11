import 'package:flutter/material.dart';

class WithOthers extends StatefulWidget {
  @override
  _WithOthersState createState() => _WithOthersState();
}

class _WithOthersState extends State<WithOthers> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Tiles(
          name: "Name",
          date: "Date",
          onPressed: () {},
        ),
        Tiles(
          name: "Name",
          date: "Date",
          onPressed: () {},
        ),
        Tiles(
          name: "Name",
          date: "Date",
          onPressed: () {},
        ),
        Tiles(
          name: "Name",
          date: "Date",
          onPressed: () {},
        ),
        Tiles(
          name: "Name",
          date: "Date",
          onPressed: () {},
        ),
      ],
    );
  }
}

class Tiles extends StatelessWidget {
  final String date;
  final String name;
  final Function onPressed;
  Tiles({this.name, this.date, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: FlatButton(
        onPressed: onPressed,
        child: Container(
          height: 70.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.deepPurple),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 8.0, 0.0, 0.0),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 19.0,
                        color: Colors.purple[900],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 8.0),
                    child: Text(
                      date,
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.purple[700],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(),
              Icon(
                Icons.chevron_right,
                size: 40.0,
                color: Colors.purple[900],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
