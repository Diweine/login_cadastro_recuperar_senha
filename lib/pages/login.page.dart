import 'reset-password.page.dart';
import 'home.page.dart';
import 'signup.page.dart';
import 'package:flutter/material.dart';

const Color color1 = Color(0xFF051d63);
const Color color2 = Color(0xFF583e88);
const Color color3 = Color(0xFFFFFFFF);
const Color color4 = Color(0xFFff5d72);
const Color color5 = Color(0xFFfea36c);

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        right: true,
        left: true,
        child: Form(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [color1, color2],
                  begin: const FractionalOffset(0.3, 1.0),
                  end: const FractionalOffset(0.0, 0.0),
                  stops: [0.0, 0.8],
                  tileMode: TileMode.clamp),
            ),
            padding: const EdgeInsets.only(top: 60, left: 40, right: 40),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset("assets/user_icon.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // autofocus: true,
                  cursorColor: color3,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                      color: color3,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: color3),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: color3),
                    ),
                  ),
                  style: TextStyle(fontSize: 20, color: color3),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  // autofocus: true,
                  cursorColor: color3,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: color3,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: color3),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: color3),
                    ),
                  ),
                  style: TextStyle(fontSize: 20, color: color3),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: color5,
                    ),
                    child: Text(
                      "Recuperar Senha",
                      textAlign: TextAlign.right,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPasswordPage(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 60,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1],
                      colors: [
                        color4,
                        color5,
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: color3,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Container(
                            child: SizedBox(
                              height: 28,
                              width: 28,
                            ),
                          )
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: color5,
                    ),
                    child: Text(
                      "Cadastre-se",
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
