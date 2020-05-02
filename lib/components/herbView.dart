import 'package:flutter/material.dart';

class HerbView extends StatefulWidget {
  final String amount;
  final String name;
  final String quantity;
  HerbView(
      {@required this.amount, @required this.name, @required this.quantity});

  @override
  _HerbViewState createState() => _HerbViewState();
}

class _HerbViewState extends State<HerbView> {
  @override
  Widget build(BuildContext context) {
    return new Material(
        child: Container(
            height: 310.73,
            width: 179.72,
            padding: EdgeInsets.only(top: 7, bottom: 18),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(22.74)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(49, 80, 58, 0.1),
                    blurRadius: 64.96,
                    offset: Offset(0, 32.48),
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Center(
                  child: Container(
                    width: 162.4,
                    height: 211.12,
                    decoration: BoxDecoration(
                      color: const Color(0xff2B4632),
                      border: Border.all(
                          color: Color.fromRGBO(23, 38, 27, 0.36), width: 2.17),
                      borderRadius: BorderRadius.all(Radius.circular(22.74)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Spacer(),
                            Container(
                              width: 64.96,
                              height: 38.98,
                              decoration: BoxDecoration(
                                  color: const Color(0xff253C2C),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(22.74),
                                    bottomLeft: Radius.circular(22.74),
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(widget.quantity + ' left',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11.79))
                                ],
                              ),
                            )
                          ],
                        ),
                        Image.asset(
                          'assets/images/agbo.png',
                          width: 179.72,
                          height: 256.75,
                          fit: BoxFit.contain,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 19.49),
                    child: Text(
                      widget.name,
                      style: TextStyle(
                        color: const Color(0xff201D1D),
                        fontWeight: FontWeight.w700,
                        fontSize: 19.79,
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(left: 19.49),
                    child: Text(
                      widget.amount,
                      style: TextStyle(
                        color: const Color(0xff201D1D),
                        fontWeight: FontWeight.w700,
                        fontSize: 19.79,
                      ),
                    )),
              ],
            )));
  }
}
