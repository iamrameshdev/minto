// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:minto/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    // _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 3),(){});
    Navigator.pushReplacement(
    context,
        MaterialPageRoute(
    builder: (context)=>LoginScreen(

    )
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height:50,
              width: 75,
              child: Text(
                'MINTO',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),

    );
  }
}



