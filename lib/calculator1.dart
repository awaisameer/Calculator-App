// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, camel_case_types

import 'package:flutter/material.dart';
import 'package:calculator/Components/buttons.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator_1 extends StatefulWidget {
  const Calculator_1({Key? key}) : super(key: key);

  @override
  State<Calculator_1> createState() => _Calculator_1State();
}

class _Calculator_1State extends State<Calculator_1> {
  var userinput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.category_outlined,
                    size: 69,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "Internship Calculator",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                    ),
                  ),
                ),
                SizedBox(height: 47),
                Text(
                  userinput,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 55),
                Text(
                  answer,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 67),
                Flexible(
                  child: GridView.count(
                    crossAxisCount: 4,
                    childAspectRatio: 1.3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      buttons(
                        title: 'AC',
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            userinput = '';
                            answer = '0';
                          });
                        },
                      ),
                      buttons(
                        title: '+',
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            userinput += '+';
                          });
                        },
                      ),
                      buttons(
                        title: '%',
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            userinput += "%";
                          });
                        },
                      ),
                      buttons(
                        title: '/',
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            userinput += "/";
                          });
                        },
                      ),
                      buttons(
                        title: '7',
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            userinput += "7";
                          });
                        },
                      ),
                      buttons(
                        title: '8',
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            userinput = userinput + "8";
                          });
                        },
                      ),
                      buttons(
                        title: '9',
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            userinput += "9";
                          });
                        },
                      ),
                      buttons(
                        title: 'x',
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            userinput += "X";
                          });
                        },
                      ),
                      buttons(
                        title: '4',
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            userinput += "4";
                          });
                        },
                      ),
                      buttons(
                        title: '5',
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            userinput += "5";
                          });
                        },
                      ),
                      buttons(
                        title: '6',
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            userinput += "6";
                          });
                        },
                      ),
                      buttons(
                        title: '-',
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            userinput += "-";
                          });
                        },
                      ),
                      buttons(
                        title: '1',
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            userinput += "1";
                          });
                        },
                      ),
                      buttons(
                        title: '2',
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            userinput += "2";
                          });
                        },
                      ),
                      buttons(
                        title: '3',
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            userinput += "3";
                          });
                        },
                      ),
                      buttons(
                        title: 'DEL',
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            if (userinput.isNotEmpty) {
                              userinput =
                                  userinput.substring(0, userinput.length - 1);
                            }
                          });
                        },
                      ),
                      buttons(
                        title: '0',
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            userinput += "0";
                          });
                        },
                      ),
                      buttons(
                        title: '.',
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            userinput += ".";
                          });
                        },
                      ),
                      buttons(
                        title: '00',
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            userinput += '00';
                          });
                        },
                      ),
                      buttons(
                        title: '=',
                        color: Colors.blue,
                        onPressed: () {
                          equalpres();
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void equalpres() {
    if (userinput.isNotEmpty) {
      String finaluserinput = userinput.replaceAll('X', '*');
      Parser p = Parser();
      Expression exp = p.parse(finaluserinput);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      answer = eval.toString();
    } else {
    
      answer = "";
    }
  }
}
