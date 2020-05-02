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
  List<String> navItems = ['all', 'ache', 'malaria', 'sugar', 'typhoid'];
  String isRecognized = 'all';
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
              child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 40.0),
                          child: Text('''How are 
                you feeling?''',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 33))),
                      Container(
                        margin: EdgeInsets.only(bottom: 27.0),
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
                                    isRecognized: isRecognized == navItems[index]?true:false,
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
