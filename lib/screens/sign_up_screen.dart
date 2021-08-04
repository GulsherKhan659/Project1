import 'package:fiver1/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  Widget _MyDivider(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: 1.0,
      color: Colors.black,
    );
  }

  Widget _ButtonDesign(Color color, String text, bool logo, bool isBlack) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 2,
              color: Colors.black.withOpacity(0.5),
            )
          ],
          //  backgroundBlendMode: BlendMode.darken,
          color: color,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          logo ? Text(isBlack ? "G" : "T") : Container(),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isBlack ? Colors.black : Colors.white),
              )),
          Container(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.83,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                        width: MediaQuery.of(context).size.width * 0.6,
                        image: AssetImage("assets/images/logo.jpg")),
                    Text(
                      "Sign Up to make and interect with your fans",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),

              ///
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _ButtonDesign(
                        Colors.white, "SIGN IN WITH GOOGLE", true, true),
                    _ButtonDesign(
                        Colors.blueAccent, "SIGN IN WITH TWITTER", true, false),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _MyDivider(context),
                        Text(" OR "),
                        _MyDivider(context),
                      ],
                    ),
                  ],
                ),
              ),

              ///
              Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 30,
                        child: TextField(
                          //style: TextStyle(fontSize: 12),
                          decoration: InputDecoration(hintText: "Name"),
                        ),
                      ),
                      Container(
                        height: 30,
                        child: TextField(
                          //style: TextStyle(fontSize: 12),
                          decoration: InputDecoration(hintText: "Email Id"),
                        ),
                      ),
                      Container(
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(hintText: "Password"),
                        ),
                      ),
                      _ButtonDesign(Colors.redAccent, 'SIGNUP', false, false),
                    ],
                  )),

              ///
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "by signing up you agree to our terms and \n service and privacy policy and confir that \n you are at least 18 year old",
                        textAlign: TextAlign.center,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => SignInScreen()));
                        },
                        child: Text(
                          "Already Have Account? LogIn",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
