import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  // MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // main styles
  TextStyle titleStyle = TextStyle(
      color: Colors.black45, fontSize: 18, fontWeight: FontWeight.w600);

  //another style
  TextStyle percentStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);

  // variables init
  double bill = 0;
  double tip = 0;
  int person = 1;

  //result
  double TipPerPerson = 0;
  double totalPerPerson = 0;

  //text Edditing controller
  TextEditingController billController = TextEditingController();
  TextEditingController tipController = TextEditingController();
  TextEditingController personController = TextEditingController();

  // function to calculatet tip

  void calculate() {
    TipPerPerson = (bill * tip) / person;
    totalPerPerson = (bill * (1 + tip)) / person;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Color.fromARGB(250, 143, 239, 222),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //header

              Container(
                width: double.infinity,
                height: 200,
                child: Image.asset(
                  "assets/logo.png",
                ),
              ),
              //body
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bill', style: titleStyle),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: billController,
                      onEditingComplete: () {
                        setState(
                          () {
                            if (billController.text.isNotEmpty) {
                              bill = double.parse(billController.text);
                            } else {
                              bill = 0;
                            }
                            FocusScope.of(context).unfocus();
                            calculate();
                          },
                        );
                      },
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(98, 205, 225, 222),
                        border: InputBorder.none,
                        hintText: "eg: 100",
                        prefixIcon: Icon(Icons.attach_money_outlined),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        color: Color.fromARGB(249, 10, 74, 62),
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'select Tip %',
                      style: titleStyle,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: FlatButton(
                            height: 60,
                            color: Color.fromARGB(255, 19, 125, 115),
                            onPressed: () {
                              setState(
                                () {
                                  tip = 0.05;
                                  calculate();
                                },
                              );
                            },
                            child: Text('5%', style: percentStyle),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: FlatButton(
                            height: 60,
                            color: Color.fromARGB(255, 19, 125, 115),
                            onPressed: () {
                              setState(
                                () {
                                  tip = 0.1;
                                  calculate();
                                },
                              );
                            },
                            child: Text('10%', style: percentStyle),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: FlatButton(
                            height: 60,
                            color: Color.fromARGB(255, 19, 125, 115),
                            onPressed: () {
                              setState(
                                () {
                                  tip = 0.15;
                                  calculate();
                                },
                              );
                            },
                            child: Text('15%', style: percentStyle),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: FlatButton(
                            height: 60,
                            color: Color.fromARGB(255, 19, 125, 115),
                            onPressed: () {
                              setState(
                                () {
                                  tip = 0.20;
                                  calculate();
                                },
                              );
                            },
                            child: Text('20%', style: percentStyle),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: FlatButton(
                            height: 60,
                            color: const Color.fromARGB(255, 19, 125, 115),
                            onPressed: () {
                              setState(
                                () {
                                  tip = 0.25;
                                  calculate();
                                },
                              );
                            },
                            child: Text('25%', style: percentStyle),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextField(
                            controller: tipController,
                            onEditingComplete: () {
                              setState(
                                () {
                                  if (tipController.text.isNotEmpty) {
                                    tip =
                                        double.parse(tipController.text) / 100;
                                  } else {
                                    tip = 0;
                                  }
                                  FocusScope.of(context).unfocus();
                                  calculate();
                                },
                              );
                            },
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(98, 205, 225, 222),
                              border: InputBorder.none,
                              hintText: "Custom",
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              color: Color.fromARGB(249, 10, 74, 62),
                              fontWeight: FontWeight.bold,
                              fontSize: 27,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('Number of person', style: titleStyle),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: personController,
                      onEditingComplete: () {
                        setState(
                          () {
                            if (personController.text.isNotEmpty) {
                              person = int.parse(personController.text);
                            } else {
                              person = 1;
                            }
                            FocusScope.of(context).unfocus();
                            calculate();
                          },
                        );
                      },
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(98, 205, 225, 222),
                        border: InputBorder.none,
                        hintText: "eg: 5",
                        prefixIcon: Icon(
                          Icons.person_outline_rounded,
                          color: Colors.black45,
                          size: 28,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        color: Color.fromARGB(249, 10, 74, 62),
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.all(30),
                      height: 300,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(249, 10, 74, 62),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                          bottom: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Tip Amount',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '/ person',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 52, 148, 121),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$${TipPerPerson.toStringAsFixed(2)}',
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 99, 224, 180),
                                      fontSize: 34,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Total',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '/ person',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 52, 148, 121),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "\$ ${totalPerPerson.toStringAsFixed(2)}",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 99, 224, 180),
                                      fontSize: 34,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: double.infinity,
                            child: FlatButton(
                              onPressed: () {
                                setState(
                                  () {
                                    person = 1;
                                    tip = 0;
                                    bill = 0;
                                    calculate();
                                    tipController.clear();
                                    personController.clear();
                                    billController.clear();
                                  },
                                );
                              },
                              child: Text(
                                'RESET',
                                style: TextStyle(fontSize: 18),
                              ),
                              color: Color.fromARGB(255, 116, 214, 184),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
