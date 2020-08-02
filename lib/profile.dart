import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:partner/profile2.dart';

const kLabelStyle = TextStyle(
  color: Color(0xff311B92),
);

const kBorderColor = UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.deepPurpleAccent),
);

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          cupertinoOverrideTheme: CupertinoThemeData(
            primaryColor: Colors.red,
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.purple[50]),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'Edit Profile',
            ),
            backgroundColor: Color(0xff76569c),
          ),
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                child: ListView(children: <Widget>[
              FormBuilder(
                key: _fbKey,
                initialValue: {
                  'date': DateTime.now(),
                  'accept_terms': false,
                },
                autovalidate: true,
                child: Column(
                  children: <Widget>[
                    FormBuilderTextField(
                      cursorColor: Colors.deepPurple,
                      attribute: "name",
                      decoration: InputDecoration(
                        enabledBorder: kBorderColor,
                        focusedBorder: kBorderColor,
                        //hoverColor: Colors.purple,
                        labelText: "Name",
                        labelStyle: kLabelStyle,
                      ),
                      style: kLabelStyle,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    FormBuilderPhoneField(
                      attribute: 'phone_number',

                      defaultSelectedCountryIsoCode: 'IN',
                      cursorColor: Colors.deepPurple[900],
                      style: kLabelStyle,
                      decoration: const InputDecoration(
                        enabledBorder: kBorderColor,
                        focusedBorder: kBorderColor,
                        border: UnderlineInputBorder(),
                        labelText: 'Phone Number',
                        labelStyle: kLabelStyle,
                        hoverColor: Colors.purple,
                      ),
                      // onChanged: _onChanged,

                      validators: [
                        FormBuilderValidators.numeric(
                            errorText: 'Invalid phone number'),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    FormBuilderImagePicker(
                      attribute: "image",
                      maxImages: 1,
                      iconColor: Colors.purple[100],
                      imageHeight: MediaQuery.of(context).size.height * 0.3,
                      imageWidth: MediaQuery.of(context).size.width * 0.6,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
//
                    FormBuilderDropdown(
                      attribute: "gender",
                      style: kLabelStyle,
                      decoration: InputDecoration(
                        labelText: "Gender",
                        hoverColor: Colors.purple,
                        labelStyle: kLabelStyle,
                        focusedBorder: kBorderColor,
                        enabledBorder: kBorderColor,
                        border: UnderlineInputBorder(),
                      ),
                      items: ['Male', 'Female', 'Transgender']
                          .map((gender) => DropdownMenuItem(
                              value: gender, child: Text("$gender")))
                          .toList(),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    FormBuilderTextField(
                      cursorColor: Colors.deepPurple,
                      attribute: "location",
                      decoration: InputDecoration(
                        focusedBorder: kBorderColor,
                        enabledBorder: kBorderColor,
                        hoverColor: Colors.purple,
                        labelText: "Location",
                        labelStyle: kLabelStyle,
                      ),
                      style: kLabelStyle,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    FormBuilderCheckboxList(
                      decoration: InputDecoration(
                        labelText: "Languages",
                        labelStyle: kLabelStyle,
                        focusedBorder: kBorderColor,
                        enabledBorder: kBorderColor,
                        border: UnderlineInputBorder(),
                      ),
                      attribute: "languages",
                      checkColor: Colors.deepPurple[900],
                      activeColor: Colors.purple[50],
                      //initialValue: ["Dart"],
                      options: [
                        FormBuilderFieldOption(value: "English"),
                        FormBuilderFieldOption(value: "Hindi"),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    FormBuilderCheckboxList(
                      //showCheckmark: false,
                      // direction: Axis.vertical,
                      // selectedColor: Colors.purple[100],
                      checkColor: Colors.deepPurple[900],
                      activeColor: Colors.purple[50],
                      attribute: 'filter_chip',

                      decoration: const InputDecoration(
                        enabledBorder: kBorderColor,
                        focusedBorder: kBorderColor,
                        labelText: 'Degrees',
                        labelStyle: kLabelStyle,
                      ),
                      //spacing: 5.0,
                      options: [
                        FormBuilderFieldOption(
                          value: 'Degree',
                          child: Text(
                            'M.Phil',
                            style: kLabelStyle,
                          ),
                        ),
                        FormBuilderFieldOption(
                            value: 'MA/M.sc',
                            child: Text(
                              'MA/M.sc',
                              style: kLabelStyle,
                            )),
                        FormBuilderFieldOption(
                          value: 'Test 2',
                          child: Text(
                            'BA',
                            style: kLabelStyle,
                          ),
                        ),
                        FormBuilderFieldOption(
                          value: 'Test 3',
                          child: Text(
                            'MD',
                            style: kLabelStyle,
                          ),
                        ),
                        FormBuilderFieldOption(
                          value: 'Test 4',
                          child: Text(
                            'Others',
                            style: kLabelStyle,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 20.0,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(),
                        Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          child: MaterialButton(
                            color: Colors.deepPurple[900],
                            child: Text(
                              "Next",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileTwo()));
                            },
                          ),
                        ),
//                        MaterialButton(
//                          child: Text("Reset"),
//                          onPressed: () {
//                            _fbKey.currentState.reset();
//                          },
//                        ),
                      ],
                    )
                  ],
                ),
              ),
            ])),
          )),
        ));
  }
}
