import 'package:appfinal/pages/register_page.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(image: AssetImage("assets/images/b9.jpg"),),
            const SizedBox(height: 16.0,),
            TextFormField(
              controller: _email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Correo Electrónico"
                ),
            ),
            const SizedBox(height: 16.0,),
            TextFormField(
              controller: _password,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Contraseña"
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16.0,
            ),
            ElevatedButton(
                onPressed: (){}, child: const Text("Inciar Sesión")),
            TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.blue)),
              onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterPage()));

              },
              child: const Text("Registrarse"),
                ),
          ],
        ),
      )
    );
  }
}
