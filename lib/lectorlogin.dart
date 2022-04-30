import 'package:flutter/material.dart';
import 'package:startup_namer/lector.dart';

class LectorLogin extends StatelessWidget {
  const LectorLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Examinator",
              style: TextStyle(
                  fontFamily: 'Open Sans', fontWeight: FontWeight.bold)),
          backgroundColor: Colors.red[900],
          centerTitle: true,
          leading: Image.asset("../assets/AP_logo_letters_rgb.jpg"),
          leadingWidth: 70,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Log in als Lector',
                    style: TextStyle(
                        color: Colors.red[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 400,
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.red, width: 2.5),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 400,
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.red, width: 2.5),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 75,
                        padding: EdgeInsets.all(15),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red[900],
                            onPrimary: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(
                              context
                            );
                          },
                          child: Text(
                            'Ga Terug',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        )),
                    Container(
                        height: 75,
                        padding: EdgeInsets.all(15),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red[900],
                            onPrimary: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LectorPage()),
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ))
                  ],
                )
              ]),
        ));
  }
}
