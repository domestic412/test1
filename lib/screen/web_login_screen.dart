import 'package:flutter/material.dart';

import '../alert.dart';
import '../home_screen.dart';

class Web_Login_Screen extends StatefulWidget {
  const Web_Login_Screen({super.key});

  @override
  State<Web_Login_Screen> createState() => _Web_Login_ScreenState();
}

var UserNameController = TextEditingController();
var PasswordController = TextEditingController();
LoginAlert loginAlert = LoginAlert();

Widget _buildAppbarImage() {
  return Padding(
    padding: const EdgeInsets.only(top: 30),
    child: Image.asset(
      'lib/assets/images/hats_logo.png',
      height: 100,
      width: 200,
    ),
  );
}

Widget _buildAppbarName() {
  return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        'Welcome to HAI AN',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue[900]),
      ));
}

Widget _buildInputUser() {
  return Column(children: <Widget>[
    Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white54),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            height: 50,
            margin: EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: UserNameController,
              style: const TextStyle(fontSize: 18, color: Colors.black87),
              decoration: const InputDecoration(
                  hintText: "UserName",
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  border: InputBorder.none),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              controller: PasswordController,
              style: const TextStyle(fontSize: 18, color: Colors.black87),
              decoration: const InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  border: InputBorder.none),
            ),
          )
        ],
      ),
    )
  ]);
}

class _Web_Login_ScreenState extends State<Web_Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/assets/images/VesselHA.jpg'),
              fit: BoxFit.cover)),
      child: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 160,
            ),
            Container(
              height: 420,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _buildAppbarImage(),
                  _buildAppbarName(),
                  const SizedBox(
                    height: 30,
                  ),
                  _buildInputUser(),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      padding: const EdgeInsets.fromLTRB(100, 10, 100, 20),
                      width: double.infinity,
                      height: 70,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                        onPressed: () {
                          Navigator.push(
                              //test
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ));
                          // login(UserNameController.text.toString(),
                          //     PasswordController.text.toString());
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  // Future<void> login(String shipperCode, String password) async {
  //   var url = 'https://192.168.7.198:1214/api/Login';
  //   Map data = {
  //     'shipperCode': UserNameController.text,
  //     'password': PasswordController.text
  //   };
  //   var body = json.encode(data);
  //   if (UserNameController.text.isNotEmpty &&
  //       PasswordController.text.isNotEmpty) {
  //     var response = await http.post(Uri.parse(url),
  //         headers: {"Content-Type": "application/json"}, body: body);
  //     if (response.statusCode == 200) {
  //       var body = response.body;
  //       var data = jsonDecode(body.toString());
  //       print('Login Success');
  //       print(data['token']);
  //       Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) => const HomeScreen(),
  //           ));
  //     } else {
  //       loginAlert.showMyAlert(context);
  //     }
  //   } else {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text("Invalid")));
  //   }
  // }
}
