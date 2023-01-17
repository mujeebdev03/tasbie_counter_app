import 'package:flutter/material.dart';

class Tasbeeapp extends StatefulWidget {
  static const String id = 'tasbee_screen';
  const Tasbeeapp({super.key});

  @override
  State<Tasbeeapp> createState() => _TasbeeappState();
}

class _TasbeeappState extends State<Tasbeeapp> {
  int counts = 0;
  bool start = true;
  bool reset = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        
        title: Center(child: const Text("T A S B I E",  style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            fontFamily:'Inkfree',
                          ),)),
        backgroundColor: Color.fromARGB(255, 36, 23, 23),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 98.0),
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 320,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(100),bottomLeft: Radius.circular(100)),
                      color: Color.fromARGB(255, 36, 23, 23),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 140.0, right: 50),
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                              // ignore: unnecessary_new
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100))),
                          onPressed: () {
                            setState(() {
                              counts++;
                              start == true;
                            });
                          },
                          child: const Text(
                            "C O U N T",
                            style: TextStyle(
                               fontFamily:'arial-bold', 
                              fontSize: 10,
                            ),
                          )),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "$counts",
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            fontFamily:'Inkfree',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 105.0, left: 120),
                    child: SizedBox(
                      width: 42,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100))),
                          onPressed: () {
                            setState(() {
                              counts = 0;
                              reset = false;
                            });
                          },
                          child: const Text(
                            "R",
                            style: TextStyle(
                               fontFamily:'arial-bold',
                              fontSize: 7,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
