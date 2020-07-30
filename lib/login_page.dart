import 'package:flutter/material.dart';
import 'package:partner/homepage.dart';
import 'package:partner/signup_page.dart';

const kTextStyle = TextStyle(color: Color(0xff4e2f73));
const kText = TextStyle(
    color: Colors.black,
    fontSize: 30.0,
    fontFamily: "Sacramento",
    fontWeight: FontWeight.bold);

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Form(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: ([
                    Color(0xffebd9ff),
                    Color(0xfff2e6ff),
                    Colors.white
                  ]))),

          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Hero(
                          tag: 'yoga',
                          child: Image(
                            image: AssetImage('assets/images/womanyoga.png'),
                            fit: BoxFit.cover,
                          ),
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: kTextStyle,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff8862b3), width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff8862b3), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      style: kTextStyle,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: kTextStyle,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff8862b3), width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff8862b3), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Material(
                        color: Color(0xff8862b3),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));

                            // TODO : Login Function
                          },
                          minWidth: 200.0,
                          height: 42.0,
                          child: Text(
                            'Log In',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'or',
                        style: kText,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 14.0),
                      child: Material(
                        color: Color(0xff8862b3),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () {
                            // TODO : Google Function
                          },
                          minWidth: 200.0,
                          height: 42.0,
                          child: Text(
                            'Log In using Google',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()));
                      },
                      child: Text(
                        'New user? Sign Up',
                        style:
                            TextStyle(color: Color(0xff4e2f73), fontSize: 15.0),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        // TODO : Forgot password
                      },
                      child: Text(
                        'Forgot Password?',
                        style:
                            TextStyle(color: Color(0xff4e2f73), fontSize: 15.0),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          //
        ),
      ),
    );
  }
}
