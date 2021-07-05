import 'package:flutter/material.dart';

const Color color1 = Color(0xFF051d63);
const Color color2 = Color(0xFF583e88);
const Color color3 = Color(0xFFFFFFFF);
const Color color4 = Color(0xFFff5d72);
const Color color5 = Color(0xFFfea36c);

class SignupPage extends StatelessWidget {
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
            padding: EdgeInsets.only(top: 10, left: 40, right: 40),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 100,
                  alignment: Alignment(0.0, 1.15),
                  child: Container(
                    height: 56,
                    width: 56,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3, 1.0],
                        colors: [
                          color4,
                          color5,
                        ],
                      ),
                      border: Border.all(
                        width: 4.0,
                        color: color3,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(56),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: TextButton(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // autofocus: true,
                  cursorColor: color3,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Nome",
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
                  style: TextStyle(
                    fontSize: 20,
                    color: color3,
                  ),
                ),
                SizedBox(
                  height: 10,
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
                  style: TextStyle(
                    fontSize: 20,
                    color: color3,
                  ),
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
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  // autofocus: true,
                  cursorColor: color3,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirmar Senha",
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
                  height: 30,
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
                      child: Text(
                        "Cadastrar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: color5,
                    ),
                    child: Text(
                      "Cancelar",
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () => Navigator.pop(context, false),
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
