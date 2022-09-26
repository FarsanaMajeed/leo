import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../theme/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

Widget emailTextField() {
  return TextFormField(
    keyboardType: TextInputType.text,
    decoration: const InputDecoration(
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10)  ,
        // ),
        prefixIcon: Icon(
          Icons.email,
          color: Color(0XFF055E98),
        ),
        prefixIconColor: Color(0xff055E98),
        label: Text("Email Address"),
        labelStyle: TextStyle(color: Color(0XFF055E98))),
  );
}

Widget passwordTextField() {
  return TextFormField(
    obscureText: true,
    decoration: const InputDecoration(
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10)  ,
        // ),
        prefixIcon: Icon(
          Icons.vpn_key,
          color: Color(0XFF055E98),
        ),
        prefixIconColor: Color(0xff055E98),
        label: Text("Password"),
        labelStyle: TextStyle(color: Color(0XFF055E98))),
  );
}

Widget submitButton(context) {
  return Container(
      height: 50,
      width: 550,
      color: Colors.white,
      child: TextButton(
          onPressed: () {
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const AdminHomePage()));
          },
          child: const Text(
            "Submit",
            style: TextStyle(
                color: Color(0XFF055E98),
                fontWeight: FontWeight.w800,
                fontSize: 18),
          )));
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF055E98),
      // appBar: PreferredSize(
      //   preferredSize:Size.fromHeight(100),
      //   child: AppBar(
      //     backgroundColor:const Color(0xff055E98),
      //     title:const Text("Leo Inspector",style: TextStyle(
      //       fontSize: 50,
      //       fontWeight: FontWeight.w400
      //     ),),
      //     centerTitle: true,
      //     leading: Image.asset("assets/LEO Inspector Logo.png"),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(color: Color(0XFF055E98)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0, left: 200),
              child: Neumorphic(
                style: const NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    shadowDarkColor: Colors.black54,
                    // lightSource: LightSource.topLeft,
                    depth: 20,
                    intensity: 3,
                    shadowLightColor: Color(0XFF2375B0)),
                child: Container(
                  color: Colours.white,
                  height: MediaQuery.of(context).size.height / 2 * 1.5,
                  width: MediaQuery.of(context).size.width / 2 * 1.5,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 30,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Enter your login details below",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: emailTextField()),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 20, right: 20),
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: passwordTextField()),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20.0, top: 5),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "forgot password",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: submitButton(context),
                              )
                            ],
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
    );
  }
}
