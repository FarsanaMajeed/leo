import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/constants.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
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
        body: ListView(
          children: [

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: w1p * 5,vertical: h1p * 3),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                 Image.asset("assets/images/logo-leo.png"),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Neumorphic(
                        style: NeumorphicStyle(
                            depth: 60,
                            shadowLightColor: Colours.white.withOpacity(0.7),
                            // shadowDarkColor: Colours.ocean_blue,
                            shape: NeumorphicShape.flat,
                            border:NeumorphicBorder(
                                color: Colours.peacock_blue,
                                width: 1
                            ),
                            boxShape: NeumorphicBoxShape.circle()
                        ),
                        child: Container(
                          height: h1p * 5.5,
                          width: w1p * 5.5,
                          decoration: BoxDecoration(
                            color: Colours.peacock_blue,

                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Icon(Icons.home,color: Colours.white,),
                          ),
                        ),
                      ),
                     SizedBox(width: w1p * 4,),
                      Neumorphic(
                        style: NeumorphicStyle(
                            depth: 60,
                            shadowLightColor: Colours.white.withOpacity(0.7),
                            // shadowDarkColor: Colours.ocean_blue,
                            shape: NeumorphicShape.flat,
                            border:NeumorphicBorder(
                                color: Colours.peacock_blue,
                                width: 1
                            ),
                            boxShape: NeumorphicBoxShape.circle()
                        ),
                        child: Container(
                          height: h1p * 5.5,
                          width: w1p * 5.5,
                          decoration: BoxDecoration(
                            color: Colours.peacock_blue,

                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Icon(Icons.notifications,color: Colours.white,),
                          ),
                        ),
                      ),
                      SizedBox(width: w1p * 4,),

                      Neumorphic(
                        style: NeumorphicStyle(
                            depth: 60,
                            shadowLightColor: Colours.white.withOpacity(0.7),
                            // shadowDarkColor: Colours.ocean_blue,
                            shape: NeumorphicShape.flat,
                            border:NeumorphicBorder(
                                color: Colours.peacock_blue,
                                width: 1
                            ),
                            boxShape: NeumorphicBoxShape.circle()
                        ),
                        child: Container(
                          height: h1p * 5.5,
                          width: w1p * 5.5,
                          decoration: BoxDecoration(
                            color: Colours.peacock_blue,

                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Icon(Icons.person,color: Colours.white,),
                          ),
                        ),
                      ),
                      SizedBox(width: w1p * 4,),

                      Neumorphic(
                        style: NeumorphicStyle(
                            depth: 60,
                            shadowLightColor: Colours.white.withOpacity(0.7),
                            // shadowDarkColor: Colours.ocean_blue,
                            shape: NeumorphicShape.flat,
                                border:NeumorphicBorder(
                                  color: Colours.peacock_blue,
                                  width: 1
                                ),
                            boxShape: NeumorphicBoxShape.circle()
                          ),
                        child: Container(
                          height: h1p * 5.5,
                          width: w1p * 5.5,
                         decoration: BoxDecoration(
                           color: Colours.peacock_blue,

                           borderRadius: BorderRadius.circular(25),
                         ),
                          child: Center(
                            child: Icon(Icons.settings,color: Colours.white,),
                          ),
                     ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: h1p * 2),
              child: Container(
                width: maxWidth,
                height: MediaQuery.of(context).size.height/1.3,
                color: Colours.white,
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: w10p * .8,left: w1p * 12,right: w1p * 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Neumorphic(
                            style: NeumorphicStyle(
                                depth: 60,
                                shadowLightColor: Colours.white.withOpacity(1),
                                // shadowDarkColor: Colours.ocean_blue,
                                shape: NeumorphicShape.concave,
                                border:NeumorphicBorder(
                                    color: Colours.white,
                                    width: 1
                                ),
                                boxShape: NeumorphicBoxShape.circle()
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width/7,
                              height:MediaQuery.of(context).size.width/7 ,
                              // height: h1p * 30,
                              // width: w1p * 30,
                              decoration: BoxDecoration(
                                color: Colours.white,

                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Image.asset("images/add-client.png",height:MediaQuery.of(context).size.width/13,),
                              ),
                            ),
                          ),
                          Neumorphic(
                            style: NeumorphicStyle(
                                depth: 60,
                                shadowLightColor: Colours.white.withOpacity(1),
                                // shadowDarkColor: Colours.ocean_blue,
                                shape: NeumorphicShape.concave,
                                border:NeumorphicBorder(
                                    color: Colours.white,
                                    width: 1
                                ),
                                boxShape: NeumorphicBoxShape.circle()
                            ),
                            child: Container(
                              // height: h1p * 30,
                              width: MediaQuery.of(context).size.width/7,
                              height:MediaQuery.of(context).size.width/7,

                              // width: w1p * 30,
                              decoration: BoxDecoration(
                                color: Colours.white,

                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child:  Image.asset("images/group.png",height:MediaQuery.of(context).size.width/13,),
                              ),
                            ),
                          ),
                          Neumorphic(
                            style: NeumorphicStyle(
                                depth: 60,
                                shadowLightColor: Colours.white.withOpacity(1),
                                // shadowDarkColor: Colours.ocean_blue,
                                shape: NeumorphicShape.concave,
                                border:NeumorphicBorder(
                                    color: Colours.white,
                                    width: 1
                                ),
                                boxShape: NeumorphicBoxShape.circle()
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width/7,
                              height:MediaQuery.of(context).size.width/7,
                              // height: h1p * 30,
                              // width: w1p * 30,
                              decoration: BoxDecoration(
                                color: Colours.white,

                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Image.asset("images/request-model.png",height:MediaQuery.of(context).size.width/13,),
                              ),
                            ),
                          ),
                          Neumorphic(
                            style: NeumorphicStyle(
                                depth: 60,
                                shadowLightColor: Colours.white.withOpacity(1),
                                // shadowDarkColor: Colours.ocean_blue,
                                shape: NeumorphicShape.concave,
                                border:NeumorphicBorder(
                                    color: Colours.white,
                                    width: 1
                                ),
                                boxShape: NeumorphicBoxShape.circle()
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width/7,
                              height:MediaQuery.of(context).size.width/7,
                              // height: h1p * 30,
                              // width: w1p * 30,
                              decoration: BoxDecoration(
                                color: Colours.white,

                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child:Image.asset("images/certificate.png",height:MediaQuery.of(context).size.width/13,),
                              ),
                            ),
                          ),
                      //     Stack(
                      //         children:[
                      //         Image.asset("images/Ellipse.png",width: w10p *2.3 ,)
                      // ] ),
                      // Stack(
                      //     children:[
                      //       Image.asset("images/Ellipse.png",width: w10p *2.3 )
                      //     ] ),
                      // Stack(
                      //     children:[
                      //       Image.asset("images/Ellipse.png",width: w10p *2.3 )
                      //     ] ),
                      //     Stack(
                      //         children:[
                      //           Image.asset("images/Ellipse.png",width: w10p *2.3 )
                      //         ] ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: w10p * .1,left: w1p * 8,right: w1p * 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: w1p * 9),
                            child: Container(
                                height: MediaQuery.of(context).size.height/10,
                                width: MediaQuery.of(context).size.width/10,
                                child: Text("MANAGE CLIENT",style: TextStyles.textStyle4,)),
                          ),
                          Padding(
                            padding:  EdgeInsets.only( left: w1p * 2),
                            child: Container(
                                height: MediaQuery.of(context).size.height/10,
                                width: MediaQuery.of(context).size.width/7.5,
                                child: Text("MANAGE INSPECTOR",style: TextStyles.textStyle4,)),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: w1p * 2),
                            child: Container(
                                height: MediaQuery.of(context).size.height/10,
                                width: MediaQuery.of(context).size.width/8.5,
                                child: Text("MANAGE REQUEST",style: TextStyles.textStyle4,)),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: w1p * 1.5),
                            child: Container(
                                height: MediaQuery.of(context).size.height/10,
                                width: MediaQuery.of(context).size.width/7,
                                child: Text("MANAGE CERTIFICATE",style: TextStyles.textStyle4,)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Container(
            //   width: maxWidth,
            //   height: MediaQuery.of(context).size.height/12,
            //   color: Colours.peacock_blue,
            // )
          ],
        ),
      ));
    });
  }
}
