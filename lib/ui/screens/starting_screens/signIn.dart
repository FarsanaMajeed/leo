import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../theme/constants.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxHeight = constraints.maxHeight;
      double maxWidth = constraints.maxWidth;
      double h1p = maxHeight * 0.01;
      double h10p = maxHeight * 0.1;
      double w10p = maxWidth * 0.1;
      double w1p = maxWidth * 0.01;

      return SafeArea(
          child: Scaffold(
        backgroundColor: Colours.peacock_blue,
        body: ListView(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: w1p * 7),
              child: Row(
                children: [
                  Image.asset(
                    "images/logo-LEO-I.png",
                    height: MediaQuery.of(context).size.height / 2.3,
                    width: MediaQuery.of(context).size.width / 2.5,
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: h10p * .8,left: w1p * 8
                      ),
                      child: Container(
                        height:MediaQuery.of(context).size.height / 1.1,
                        width: MediaQuery.of(context).size.width / 3,
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
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: h10p * 1, bottom: h10p * 1.3),
                              child: Text(
                                "Log in",
                                style: TextStyles.textStyle1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: w1p * 2),
                              child: Container(
                                width: w10p * 5,
                                height: h10p * .8,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colours.white),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colours.white.withOpacity(0.3),
                                        spreadRadius: .5,
                                        blurRadius: 8,
                                        offset: Offset(
                                            0, 1), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colours.white),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: h1p * 2, vertical: h1p * 3),
                                      hintText: "User Name",
                                      hintStyle: TextStyles.textStyle2),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: h10p * 1,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: w1p * 2),
                              child: Container(
                                width: w10p * 5,
                                height: h10p * .8,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colours.white),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colours.white.withOpacity(0.3),
                                        spreadRadius: .5,
                                        blurRadius: 8,
                                        offset: Offset(
                                            0, 1), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colours.white),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: h1p * 2, vertical: h1p * 3),
                                      hintText: "Password",
                                      hintStyle: TextStyles.textStyle2),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: h10p * 1.8,
                            ),
                            Neumorphic(
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  depth: 22,
                                  border: NeumorphicBorder(
                                      width: 3,
                                      isEnabled: true,
                                      color: Colours.grey),
                                  shadowLightColor:
                                      Colours.grey.withOpacity(0.1)),
                              child: Container(
                                height: MediaQuery.of(context).size.height / 12,
                                width: MediaQuery.of(context).size.width / 9,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Colours.greys, Colours.shadow]),
                                  color: Colours.grey,
                                ),
                                child: Center(
                                  child: Text(
                                    "LOGIN",
                                    style: TextStyles.textStyle3,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h1p * 8,
            )
          ],
        ),
      ));
    });
  }
}
