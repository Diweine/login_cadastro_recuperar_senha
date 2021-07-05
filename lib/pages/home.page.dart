import 'package:flutter/material.dart';

const Color color1 = Color(0xFF051d63);
const Color color2 = Color(0xFF583e88);
const Color color3 = Color(0xFFFFFFFF);
const Color color4 = Color(0xFFff5d72);
const Color color5 = Color(0xFFfea36c);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Logoff',
          style: TextStyle(color: color3),
        ),
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: color3,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: SafeArea(
        top: false,
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
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
                child: Text(
              "Home Page",
              style: TextStyle(fontSize: 30, color: color3),
            )),
          ),
        ),
      ),
    );
  }
}
