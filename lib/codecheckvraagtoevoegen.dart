import 'package:flutter/material.dart';
import 'package:startup_namer/lector.dart';

class CodecheckvraagToevoegenPagina extends StatelessWidget {
  CodecheckvraagToevoegenPagina({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final vraag = TextEditingController();
  final foutievecode = TextEditingController();
  final correctecode = TextEditingController();

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
        body: Form(
          key: _formKey,
          child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red[900],
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                    )),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                    Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Code Check Toevoegen',
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
                    child: TextFormField(
                      controller: vraag,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length <= 5) {
                          return 'Vul een vraag in (min. 5 karakters)';
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: "Titel",
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
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 400,
                          padding: EdgeInsets.all(15),
                          child: TextFormField(
                            controller: foutievecode,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Er moet foutieve code ingevoerd worden.';
                              }
                              return null;
                            },
                            maxLines: 7,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: "Te verbeteren code",
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2.5),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 400,
                          padding: EdgeInsets.all(15),
                          child: TextFormField(
                            controller: correctecode,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Er moet een verbetering ingevuld worden.';
                              }
                              return null;
                            },
                            maxLines: 7,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: "Verbetering",
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2.5),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ]),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red[900], // background
                    ),
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LectorPage()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text(
                                  'De vraag kon niet toegevoegd worden vanwege enkele fouten.')),
                        );
                      }
                    },
                    child: Icon(Icons.add_comment_rounded,
                        size: 50, color: Colors.white),
                  ),
                  padding: EdgeInsets.only(top: 45),
                )
              ])),
        ));
  }
}
