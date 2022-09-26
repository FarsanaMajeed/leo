import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/constants.dart';

class EmployeeListAddScreen extends StatefulWidget {
  const EmployeeListAddScreen({Key? key}) : super(key: key);

  @override
  State<EmployeeListAddScreen> createState() => _EmployeeListAddScreenState();
}

class _EmployeeListAddScreenState extends State<EmployeeListAddScreen> {
  @override
  Widget build(BuildContext context) {
    bool addScreen = false;
    return LayoutBuilder(builder: (context, constraints) {
      double maxHeight = constraints.maxHeight;
      double maxWidth = constraints.maxWidth;
      double h1p = maxHeight * 0.01;
      double h10p = maxHeight * 0.1;
      double w10p = maxWidth * 0.1;
      double w1p = maxHeight * 0.01;
      return Scaffold(
        backgroundColor: Colours.peacock_blue,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: h1p * 4.5, left: w1p * 8),
              child: Row(
                children: [
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //       top: h1p * 6),
                  //   child:
                  Container(
                    width: MediaQuery.of(context).size.width / 3.1,
                    height: MediaQuery.of(context).size.height / 1.10,
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
                    child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              top: h1p * 3, left: w1p * 2, right: w1p * 2),
                          child: Container(
                              height: MediaQuery.of(context).size.height / 9,
                              color: Colours.white,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: h1p * .5,
                                    bottom: h1p * .5,
                                    left: w1p * 1.5),
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          23,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              12,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          color: Colours.grey),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: h1p * 2, left: h1p * 2),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Name   :",
                                                style: TextStyles.textStyle6,
                                              ),
                                              Text(
                                                " Amal",
                                                style: TextStyles.textStyle6,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: h1p * 1,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Emp ID :",
                                                style: TextStyles.textStyle6,
                                              ),
                                              Text(
                                                " Amal",
                                                style: TextStyles.textStyle6,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        );
                      },
                    ),
                  ),

                  //
                  //
                  // ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: h1p * 3, left: w1p * 14, right: w1p * 14),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          depth: 60,
                          shadowLightColor: Colours.white.withOpacity(0.5),
                          // shadowDarkColor: Colours.ocean_blue,
                          shape: NeumorphicShape.concave,
                          border: NeumorphicBorder(
                              color: Colours.peacock_blue, width: 1),
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(10))),
                      child: InkWell(
                   onTap: (){
                     setState(() {
                       addScreen == true;

                     });
                   },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 8,
                          decoration: BoxDecoration(
                            color: Colours.peacock_blue,
                            // borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                              child: Text(
                            "Add Inspector",
                            style: TextStyles.textStyle5,
                          )),
                        ),
                      ),
                    ),
                  ),
                  addScreen == true
                      ? Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: w1p * 7),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 1.17,
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colours.grey,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colours.grey.withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 8,
                                      offset: Offset(
                                          0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: w1p * 6,
                                          right: w1p * 6,
                                          top: h10p * 1.5),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colours.white),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colours.white
                                                    .withOpacity(0.3),
                                                spreadRadius: .5,
                                                blurRadius: 8,
                                                offset: Offset(0,
                                                    1), // changes position of shadow
                                              ),
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: Colours.white),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: h1p * 2,
                                                      vertical: h1p * 3),
                                              hintText: "Name",
                                              hintStyle: TextStyles.textStyle6),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: h10p * .4,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: w1p * 6,
                                        right: w1p * 6,
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colours.white),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colours.white
                                                    .withOpacity(0.3),
                                                spreadRadius: .5,
                                                blurRadius: 8,
                                                offset: Offset(0,
                                                    1), // changes position of shadow
                                              ),
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: Colours.white),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: h1p * 2,
                                                      vertical: h1p * 3),
                                              hintText: "Emp ID",
                                              hintStyle: TextStyles.textStyle6),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: h10p * .4,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: w1p * 6,
                                        right: w1p * 6,
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colours.white),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colours.white
                                                    .withOpacity(0.3),
                                                spreadRadius: .5,
                                                blurRadius: 8,
                                                offset: Offset(0,
                                                    1), // changes position of shadow
                                              ),
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: Colours.white),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: h1p * 2,
                                                      vertical: h1p * 3),
                                              hintText: "Contact Number",
                                              hintStyle: TextStyles.textStyle6),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: h10p * .4,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: w1p * 6,
                                        right: w1p * 6,
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                14,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colours.white),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colours.white
                                                    .withOpacity(0.3),
                                                spreadRadius: .5,
                                                blurRadius: 8,
                                                offset: Offset(0,
                                                    1), // changes position of shadow
                                              ),
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: Colours.white),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: h1p * 2,
                                                      vertical: h1p * 3),
                                              hintText: "Email Address",
                                              hintStyle: TextStyles.textStyle6),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: h10p * .4,
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colours.lightGrey),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colours.white
                                                  .withOpacity(0.3),
                                              spreadRadius: .5,
                                              blurRadius: 8,
                                              offset: Offset(0,
                                                  1), // changes position of shadow
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colours.white),
                                      child: Center(
                                          child: Column(
                                        children: [
                                          SizedBox(
                                            height: h1p * .5,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                22,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                15,
                                            child: SvgPicture.asset(
                                              "images/fa_upload.svg",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          SizedBox(
                                            height: h1p * .7,
                                          ),
                                          Text(
                                            "Signature",
                                          )
                                        ],
                                      )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: h1p * 3,
                                      ),
                                      child: Neumorphic(
                                        style: NeumorphicStyle(
                                            depth: 60,
                                            shadowLightColor:
                                                Colours.white.withOpacity(0.5),
                                            // shadowDarkColor: Colours.ocean_blue,
                                            shape: NeumorphicShape.concave,
                                            border: NeumorphicBorder(
                                                color: Colours.greys, width: 1),
                                            boxShape:
                                                NeumorphicBoxShape.circle()),
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              10,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              10,
                                          decoration: BoxDecoration(
                                            color: Colours.greys,
                                            // borderRadius: BorderRadius.circular(25),
                                          ),
                                          child: Center(
                                              child: Icon(
                                            Icons.add,
                                            color: Colours.black,
                                            size: 60,
                                          )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: w10p * 1.2),
                              child: Container(
                                child: Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height /
                                        5.5,
                                    width:
                                        MediaQuery.of(context).size.width / 10,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(140),
                                        color: Colours.grey),
                                    child: Image.asset(
                                      "assets/images/vector.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ],
                        )
                      : Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: w1p * 7),
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 1.17,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colours.grey,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colours.grey.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(
                                            0, 1), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     SizedBox(height: h10p * 1.3,),

                                     Text("Name",style: TextStyles.textStyle5,),
                                     SizedBox(height: h1p * 8,),
                                     Padding(
                                       padding:  EdgeInsets.only(left: w1p * 22),
                                       child: Row(
                                         children: [
                                           Text("Emp ID         :  ",style: TextStyles.textStylez4,),
                                           Text("XXXX",style: TextStyles.textStylez4,),
                                         ],
                                       ),
                                     ),
                                     SizedBox(height: h1p * 3,),
                                     Padding(
                                       padding: EdgeInsets.only(left: w1p * 22),
                                       child: Row(
                                         children: [
                                           Text("Contact No  :  ",style: TextStyles.textStylez4,),
                                           Text("XXXXXX",style: TextStyles.textStylez4,),
                                         ],
                                       ),
                                     ),
                                     SizedBox(height: h1p * 3,),
                                     Padding(
                                       padding:  EdgeInsets.only(left: w1p * 22),
                                       child: Row(
                                         children: [
                                           Text("Email            :  ",style: TextStyles.textStylez4,),
                                           Text("XXXXXXXXXXXXX",style: TextStyles.textStylez4,),
                                         ],
                                       ),
                                     ),
                                     SizedBox(height: h1p * 10),
                                     Container(
                                       width:
                                       MediaQuery.of(context).size.width / 8,
                                       height:
                                       MediaQuery.of(context).size.height /
                                           9,
                                       decoration: BoxDecoration(
                                           border: Border.all(
                                               color: Colours.lightGrey),
                                           boxShadow: [
                                             BoxShadow(
                                               color: Colours.white
                                                   .withOpacity(0.3),
                                               spreadRadius: .5,
                                               blurRadius: 8,
                                               offset: Offset(0,
                                                   1), // changes position of shadow
                                             ),
                                           ],
                                           borderRadius:
                                           BorderRadius.circular(10),
                                           color: Colours.white),
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("Signature",style: TextStyles.textStylez4,),

                                         ],
                                       ),
                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(
                                         top: h1p * 10,
                                       ),
                                       child: Neumorphic(
                                         style: NeumorphicStyle(
                                             depth: 60,
                                             shadowLightColor:
                                             Colours.white.withOpacity(0.5),
                                             // shadowDarkColor: Colours.ocean_blue,
                                             shape: NeumorphicShape.concave,
                                             border: NeumorphicBorder(
                                                 color: Colours.greys, width: 1),
                                             boxShape:
                                             NeumorphicBoxShape.circle()),
                                         child: Container(
                                           height: MediaQuery.of(context)
                                               .size
                                               .height /
                                               10,
                                           width: MediaQuery.of(context)
                                               .size
                                               .width /
                                               10,
                                           decoration: BoxDecoration(
                                             color: Colours.greys,
                                             // borderRadius: BorderRadius.circular(25),
                                           ),
                                           child: Center(
                                               child:SvgPicture.asset("images/upload-file.svg")
                                           ),
                                         ),
                                       ),
                                     ),
                                   ],
                                  )),
                            ),
                            Positioned(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: w10p * 1.2),
                                  child: Container(
                                    child: Center(
                                      child: Container(
                                        height: MediaQuery.of(context).size.height /
                                            5.5,
                                        width:
                                        MediaQuery.of(context).size.width / 10,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(140),
                                            color: Colours.grey),
                                        child: Image.asset(
                                          "assets/images/vector.png",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
