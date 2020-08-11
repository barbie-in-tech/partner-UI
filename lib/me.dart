import 'package:flutter/material.dart';

class WithMe extends StatefulWidget {
  @override
  _WithMeState createState() => _WithMeState();
}

class _WithMeState extends State<WithMe> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Tiles(
          date: "Date",
        ),
        Tiles(
          date: "Date",
        ),
        Tiles(
          date: "Date",
        ),
        Tiles(
          date: "Date",
        ),
        Tiles(
          date: "Date",
        ),
      ],
    );
  }
}

class Tiles extends StatelessWidget {
  final String date;
  Tiles({this.date});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: FlatButton(
        onPressed: () {},
        child: Container(
          height: 60.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.deepPurple),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  date,
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.purple[900],
                  ),
                ),
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
