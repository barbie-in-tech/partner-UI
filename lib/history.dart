import 'package:flutter/material.dart';
import 'package:partner/me.dart';
import 'package:partner/others.dart';

class PatientHistory extends StatefulWidget {
  @override
  _PatientHistoryState createState() => _PatientHistoryState();
}

class _PatientHistoryState extends State<PatientHistory>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(280.0),
        child: AppBar(
          flexibleSpace: Center(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color(0xff6E45E1),
                    Color(0xff1FD1F9),
                  ])),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundColor: Color(0000000000),
                      child: Image(
                        image: AssetImage('assets/images/cat.png'),
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Gender',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Age',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.purple[50]),
            onPressed: () => Navigator.of(context).pop(),
          ),

          bottom: TabBar(
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            tabs: [
              Tab(
                child: Text("Past Consultation with me"),
              ),
              new Tab(
                child: Text("Past Consultation with others"),
              ),
            ],
            controller: _tabController,
          ),
//          actions: <Widget>[
//            CircleAvatar(
//              radius: 70.0,
//              backgroundColor: Colors.pink,
//            )
//          ],
        ),
      ),
      body: TabBarView(
        children: [
          WithMe(),
          WithOthers(),
        ],
        controller: _tabController,
      ),
    );
  }
}
