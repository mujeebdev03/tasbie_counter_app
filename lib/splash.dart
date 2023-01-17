import 'package:flutter/material.dart';
import 'package:tasbie/home.dart';

class SplashScreen extends StatefulWidget {
  static const String id = '/';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4)).then((_) {
      Navigator.of(context).pushReplacementNamed(Tasbeeapp.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.greenAccent,
       
      body: Column(
        children: [
          SizedBox(
            
            height: 150,
          ),
          Center(
            child: Container(
              
              width: 200,
              height: 200,
            child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/Images/tasbiegif.gif'),
            ),
         
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 120.0)),
          const CircularProgressIndicator(
            backgroundColor: Colors.white,
            strokeWidth: 3,
          )
        ],
      ),
    );
  }
}
