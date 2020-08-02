import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

const kLabelStyle = TextStyle(
  color: Color(0xff311B92),
);

const kBorderColor = UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.deepPurpleAccent),
);

class ProfileTwo extends StatefulWidget {
  @override
  _ProfileTwoState createState() => _ProfileTwoState();
}

final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

class _ProfileTwoState extends State<ProfileTwo> {
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
            'Edit Profile',
          ),
          backgroundColor: Color(0xff76569c),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              FormBuilder(
                // context,
                key: _fbKey,
                // autovalidate: true,

                readOnly: false,
                child: Column(
                  children: <Widget>[
                    FormBuilderDropdown(
                      attribute: "kop",
                      decoration: InputDecoration(
                        labelText: "Kind of professional",
                        labelStyle: kLabelStyle,
                        enabledBorder: kBorderColor,
                      ),
                      // initialValue: 'Male',

                      items: [
                        'Counselor',
                        'Psychologist',
                        'Clinical Psychologist',
                        'Psychiatrist',
                        'Others'
                      ]
                          .map((kop) =>
                              DropdownMenuItem(value: kop, child: Text("$kop")))
                          .toList(),
                    ),
                    SizedBox(height: 20),
                    FormBuilderDropdown(
                      attribute: "exp",
                      decoration: InputDecoration(
                        labelText: "Experience",
                        labelStyle: kLabelStyle,
                        enabledBorder: kBorderColor,
                      ),
                      // initialValue: 'Male',

                      items: [
                        '0-2 Years',
                        '3-5 Years',
                        '6-10 Years',
                        '11-15 Years',
                        '15+ Years'
                      ]
                          .map((kop) =>
                              DropdownMenuItem(value: kop, child: Text("$kop")))
                          .toList(),
                    ),
                    SizedBox(height: 20),
                    FormBuilderCheckboxList(
                      attribute: 'choice_chip',
                      checkColor: Colors.deepPurple[900],
                      activeColor: Colors.purple[50],
                      decoration: const InputDecoration(
                        enabledBorder: kBorderColor,
                        focusedBorder: kBorderColor,
                        labelText: 'Speciality',
                        labelStyle: TextStyle(
                          color: Color(0x99311B92),
                        ),
                      ),
                      options: [
                        FormBuilderFieldOption(
                          value: 'Test',
                          child: Text(
                            'Addictions',
                            style: kLabelStyle,
                          ),
                        ),
                        FormBuilderFieldOption(
                            value: '1',
                            child: Text(
                              'Anxiety',
                              style: kLabelStyle,
                            )),
                        FormBuilderFieldOption(
                            value: '2',
                            child: Text(
                              'Anger Management',
                              style: kLabelStyle,
                            )),
                        FormBuilderFieldOption(
                            value: '3',
                            child: Text(
                              'BiPolar Disorder',
                              style: kLabelStyle,
                            )),
                        FormBuilderFieldOption(
                            value: '4',
                            child: Text(
                              'Couples/Marital/Family Therapy',
                              style: kLabelStyle,
                            )),
                        FormBuilderFieldOption(
                            value: '5',
                            child: Text(
                              'Career Counselling',
                              style: kLabelStyle,
                            )),
                        FormBuilderFieldOption(
                            value: '6',
                            child: Text(
                              'Eating Disorder',
                              style: kLabelStyle,
                            )),
                        FormBuilderFieldOption(
                            value: '7',
                            child: Text(
                              'OCD',
                              style: kLabelStyle,
                            )),
                        FormBuilderFieldOption(
                            value: '8',
                            child: Text(
                              'Sexuality/LGBT Issues',
                              style: kLabelStyle,
                            )),
                        FormBuilderFieldOption(
                            value: '9',
                            child: Text(
                              'Sexual Issues',
                              style: kLabelStyle,
                            )),
                        FormBuilderFieldOption(
                            value: '10',
                            child: Text(
                              'Self Esteem Issues',
                              style: kLabelStyle,
                            )),
                        FormBuilderFieldOption(
                            value: '11',
                            child: Text(
                              'Trauma',
                              style: kLabelStyle,
                            )),
                      ],
                    ),
                    SizedBox(height: 20),
                    FormBuilderTextField(
                      cursorColor: Colors.deepPurple,
                      attribute: "name",
                      decoration: InputDecoration(
                        hintText: "Tell us something about yourself",
                        enabledBorder: kBorderColor,
                        focusedBorder: kBorderColor,
                        //hoverColor: Colors.purple,
                        labelText: "Bio",
                        labelStyle: kLabelStyle,
                      ),
                      style: kLabelStyle,
                    ),
                    SizedBox(height: 20),
                    FormBuilderImagePicker(
                      attribute: "image",
                      labelText: "Degree and Education Certificate",
//                      iconColor: Color(0x0Fbf4be3),
                      iconColor: Colors.purple[100],
                      imageHeight: MediaQuery.of(context).size.height * 0.3,
                      imageWidth: MediaQuery.of(context).size.width * 0.6,
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
                              "Save",
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
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
