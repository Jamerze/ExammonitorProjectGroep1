import 'package:flutter/material.dart';
import 'package:startup_namer/lectorlogin.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 1,
            child: Scaffold(
                appBar: AppBar(
                  title: Text("Examinator",
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold)),
                  backgroundColor: Colors.red[900],
                  centerTitle: true,
                  leading: Image.asset("../assets/AP_logo_letters_rgb.jpg"),
                  leadingWidth: 70,
                ),
                body: SafeArea(
                    child: Column(children: <Widget>[
                  Container(
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height /
                          2.4, // Also Including Tab-bar height.
                      child: Center(
                          child: SizedBox(
                              height: 150,
                              width: 300,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(
                                      255, 220, 97, 97), // background
                                  onPrimary: Colors.white, // foreground
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LectorLogin()),
                                  );
                                },
                                child: Text(
                                  'Lector',
                                  style: TextStyle(
                                    fontSize: 65.0,
                                    fontFamily: 'Open Sans',
                                  ),
                                ),
                              )))),
                  PreferredSize(
                      preferredSize: Size.fromHeight(50.0),
                      child: Container(
                        color: Colors.red[400],
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          "Bent u een Student ( v ) of een Lector ( ^ )?",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )),
                  //TabBarView(children: [ImageList(),])
                  Expanded(
                      child: Container(
                          color: Colors.white,
                          child: Center(
                              child: SizedBox(
                                  height: 150,
                                  width: 300,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.red[900], // background
                                      onPrimary: Colors.white, // foreground
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Student',
                                      style: TextStyle(
                                        fontSize: 65.0,
                                        fontFamily: 'Open Sans',
                                      ),
                                    ),
                                  ))))),
                ])))));
  }
}
