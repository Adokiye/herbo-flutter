import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:herbo/components/navItem.dart';
import 'package:herbo/models/Herb.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> navItems = ['All', 'Ache', 'Malaria', 'Sugar', 'Typhoid'];
  List<Herb> herbs = [
    Herb(
        name: 'Agbo Jedi',
        amount: 'N3,000',
        light: Color(0xff2B4632),
        dark: Color(0xff253C2C),
        quantity: '3',
        image: 'assets/images/agbo.png'),
    Herb(
        name: 'Opa Eyin',
        amount: 'N2,500',
        light: Color(0xff442B2B),
        dark: Color(0xff352222),
        quantity: '12',
        image: 'assets/images/opaEyin.png'),
    Herb(
        name: 'Opa Eyin',
        amount: 'N3,000',
        light: Color(0xffF3E1C7),
        dark: Color(0xffE1C9A3),
        quantity: '5',
        image: 'assets/images/opaEyin.png'),
    Herb(
        name: 'Epa Ijebu',
        amount: 'N4,000',
        light: Color(0xff302943),
        dark: Color(0xff282239),
        quantity: '4',
        image: 'assets/images/epaIjebu.png'),
  ];
  String isRecognized = 'All';
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: Stack(
        children: <Widget>[
          SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 40.0,
                      horizontal: MediaQuery.of(context).size.width * 0.065),
                  child: Text('''How are 
                you feeling?''',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 33))),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                    bottom: 27.0,
                    left: MediaQuery.of(context).size.width * 0.065),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: navItems.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return new InkWell(
                          onTap: () {
                            setState(() {
                              isRecognized = navItems[index];
                            });
                          },
                          child: NavItem(
                            isRecognized:
                                isRecognized == navItems[index] ? true : false,
                            name: isRecognized,
                          ));
                    }),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
