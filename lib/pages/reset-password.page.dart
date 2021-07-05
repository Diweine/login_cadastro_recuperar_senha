import 'package:flutter/material.dart';

const Color color1 = Color(0xFF051d63);
const Color color2 = Color(0xFF583e88);
const Color color3 = Color(0xFFFFFFFF);
const Color color4 = Color(0xFFff5d72);
const Color color5 = Color(0xFFfea36c);

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Voltar',
          style: TextStyle(color: color1),
        ),
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: color1,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        right: true,
        left: true,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color1, color2],
                begin: const FractionalOffset(0.3, 1.0),
                end: const FractionalOffset(0.0, 0.0),
                stops: [0.0, 0.8],
                tileMode: TileMode.clamp),
          ),
          padding: EdgeInsets.only(top: 60, left: 40, right: 40),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 200,
                            height: 40,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Esqueceu sua senha?",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                                color: color3),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Por favor, informe o E-mail associado a sua conta que enviaremos um link para o mesmo com as instruções para restauração de sua senha.",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: color3),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
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
                          height: 20,
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
                                "Enviar",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: color3,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
