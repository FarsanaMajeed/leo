import 'package:flutter/material.dart';

import '../../theme/constants.dart';

class ManageClientScreen extends StatefulWidget {
  const ManageClientScreen({Key? key}) : super(key: key);

  @override
  State<ManageClientScreen> createState() => _ManageClientScreenState();
}

class _ManageClientScreenState extends State<ManageClientScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxHeight = constraints.maxHeight;
      double maxWidth = constraints.maxWidth;
      double h1p = maxHeight * 0.01;
      double h10p = maxHeight * 0.1;
      double w10p = maxWidth * 0.1;
      return SafeArea(
          child: Scaffold(
              backgroundColor: Colours.peacock_blue,
              body: ListView(children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: w10p * .4, vertical: h1p * 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/logo-leo.png",
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width / 20,
                          height: MediaQuery.of(context).size.width / 20,
                          child: Image.asset(
                            "images/arrows.png",
                            fit: BoxFit.fill,
                          )),
                    ],
                  ),
                ),
                Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(vertical: h10p * 1),
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    height: MediaQuery.of(context).size.height/1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colours.grey,
                      boxShadow: [
                        BoxShadow(
                          color: Colours.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [],
                    ),
                  ),
                ))
              ])));
    });
  }
}
