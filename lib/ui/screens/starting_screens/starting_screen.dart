import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../theme/constants.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({Key? key}) : super(key: key);

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxHeight = constraints.maxHeight;
      double maxWidth = constraints.maxWidth;
      double h1p = maxHeight * 0.01;
      double h10p = maxHeight * 0.1;
      double w10p = maxWidth * 0.1;
      double w1p = maxHeight * 0.01;
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colours.peacock_blue,
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: h1p * 2),
                child: Container(
                  width: maxWidth,
                  height: MediaQuery.of(context).size.height / 1.3,
                  color: Colours.peacock_blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: w10p * 1, left: w1p * 8, right: w1p * 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Neumorphic(
                              style: NeumorphicStyle(
                                  depth: 60,
                                  shadowLightColor:
                                      Colours.white.withOpacity(.5),
                                  // shadowDarkColor: Colours.ocean_blue,
                                  shape: NeumorphicShape.concave,
                                  border: NeumorphicBorder(
                                      color: Colours.peacock_blue, width: 1),
                                  boxShape: NeumorphicBoxShape.circle()),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 6.4,
                                height: MediaQuery.of(context).size.width / 6.4,
                                // height: h1p * 30,
                                // width: w1p * 30,
                                decoration: BoxDecoration(
                                  color: Colours.peacock_blue,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "images/startingIcon1.png",
                                        height:
                                            MediaQuery.of(context).size.width / 13,
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(top: h1p * 2),
                                        child: Text("ADMIN LOGIN",style: TextStyles.textStyle5,),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Neumorphic(
                              style: NeumorphicStyle(
                                  depth: 60,
                                  shadowLightColor:
                                      Colours.white.withOpacity(.5),
                                  // shadowDarkColor: Colours.ocean_blue,
                                  shape: NeumorphicShape.concave,
                                  border: NeumorphicBorder(
                                      color: Colours.peacock_blue, width: 1),
                                  boxShape: NeumorphicBoxShape.circle()),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 6.4,
                                height: MediaQuery.of(context).size.width / 6.4,
                                // height: h1p * 30,
                                // width: w1p * 30,
                                decoration: BoxDecoration(
                                  color: Colours.peacock_blue,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      Image.asset(
                                        "images/starting-icon2.png",
                                        height:
                                            MediaQuery.of(context).size.width / 13,
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(top: h1p * 2),
                                        child: Text("INSPECTOR LOGIN",style: TextStyles.textStyle5,),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Neumorphic(
                              style: NeumorphicStyle(
                                  depth: 60,
                                  shadowLightColor:
                                      Colours.white.withOpacity(.5),
                                  // shadowDarkColor: Colours.ocean_blue,
                                  shape: NeumorphicShape.concave,
                                  border: NeumorphicBorder(
                                      color: Colours.peacock_blue, width: 1),
                                  boxShape: NeumorphicBoxShape.circle()),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 6.4,
                                height: MediaQuery.of(context).size.width / 6.4,
                                // height: h1p * 30,
                                // width: w1p * 30,
                                decoration: BoxDecoration(
                                  color: Colours.peacock_blue,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      Image.asset(
                                        "images/startingIcon3.png",
                                        height:
                                            MediaQuery.of(context).size.width / 13,
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(top: h1p * 2),
                                        child: Text("CLIENT LOGIN",style: TextStyles.textStyle5,),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Neumorphic(
                              style: NeumorphicStyle(
                                  depth: 60,
                                  shadowLightColor:
                                      Colours.white.withOpacity(.5),
                                  // shadowDarkColor: Colours.ocean_blue,
                                  shape: NeumorphicShape.concave,
                                  border: NeumorphicBorder(
                                      color: Colours.peacock_blue, width: 1),
                                  boxShape: NeumorphicBoxShape.circle()),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 6.4,
                                height: MediaQuery.of(context).size.width / 6.4,
                                // height: h1p * 30,
                                // width: w1p * 30,
                                decoration: BoxDecoration(
                                  color: Colours.peacock_blue,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      Image.asset(
                                        "images/startingIcon4.png",
                                        height:
                                            MediaQuery.of(context).size.width / 13,
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(top: h1p * 2),
                                        child: Text("CLIENT LOGIN",style: TextStyles.textStyle5,),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Neumorphic(
                              style: NeumorphicStyle(
                                  depth: 60,
                                  shadowLightColor:
                                      Colours.white.withOpacity(.5),
                                  // shadowDarkColor: Colours.ocean_blue,
                                  shape: NeumorphicShape.concave,
                                  border: NeumorphicBorder(
                                      color: Colours.peacock_blue, width: 1),
                                  boxShape: NeumorphicBoxShape.circle()),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 6.4,
                                height: MediaQuery.of(context).size.width / 6.4,
                                // height: h1p * 30,
                                // width: w1p * 30,
                                decoration: BoxDecoration(
                                  color: Colours.peacock_blue,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      Image.asset(
                                        "images/startingIcon5.png",
                                        height:
                                            MediaQuery.of(context).size.width / 13,
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(top: h1p * 2),
                                        child: Text("DEMO",style: TextStyles.textStyle5,),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       top: w10p * .1, left: w1p * 8, right: w1p * 8),
                      //   child: Row(
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Padding(
                      //         padding: EdgeInsets.only(left: w1p * 9),
                      //         child: Container(
                      //             height:
                      //                 MediaQuery.of(context).size.height / 10,
                      //             width: MediaQuery.of(context).size.width / 10,
                      //             child: Text(
                      //               "MANAGE CLIENT",
                      //               style: TextStyles.textStyle4,
                      //             )),
                      //       ),
                      //       Padding(
                      //         padding: EdgeInsets.only(left: w1p * 2),
                      //         child: Container(
                      //             height:
                      //                 MediaQuery.of(context).size.height / 10,
                      //             width:
                      //                 MediaQuery.of(context).size.width / 7.5,
                      //             child: Text(
                      //               "MANAGE INSPECTOR",
                      //               style: TextStyles.textStyle4,
                      //             )),
                      //       ),
                      //       Padding(
                      //         padding: EdgeInsets.only(right: w1p * 2),
                      //         child: Container(
                      //             height:
                      //                 MediaQuery.of(context).size.height / 10,
                      //             width:
                      //                 MediaQuery.of(context).size.width / 8.5,
                      //             child: Text(
                      //               "MANAGE REQUEST",
                      //               style: TextStyles.textStyle4,
                      //             )),
                      //       ),
                      //       Padding(
                      //         padding: EdgeInsets.only(right: w1p * 1.5),
                      //         child: Container(
                      //             height:
                      //                 MediaQuery.of(context).size.height / 10,
                      //             width: MediaQuery.of(context).size.width / 7,
                      //             child: Text(
                      //               "MANAGE CERTIFICATE",
                      //               style: TextStyles.textStyle4,
                      //             )),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
