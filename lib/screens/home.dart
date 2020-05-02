import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:herbo/components/navItem.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> navItems = ['All', 'Ache', 'Malaria', 'Sugar', 'Typhoid'];
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
