import 'package:appfinal/pages/login_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  void initState (){
    _closeSplash();
    super.initState();
  }

  Future<void> _closeSplash() async {
      Future.delayed(const Duration(seconds: 4), () async {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
      }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage("assets/images/b8.jpg"),
        ),
      ),
    );
  }
}
