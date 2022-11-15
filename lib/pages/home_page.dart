import 'package:appfinal/pages/cc_page.dart';
import 'package:appfinal/pages/museos_page.dart';
import 'package:appfinal/pages/parques_page.dart';
import 'package:appfinal/pages/restaurantes_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final _museos = "";
  final _parques = "";
  final _restaurantes = "";
  final _cc = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center (
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'TURSIMO CHÍA',
                ),
              ),
              const SizedBox(height: 16.0,),
              const Image(image: AssetImage("assets/images/hp01.jpg"),),
              const SizedBox(height: 16.0,),

              ElevatedButton(
                child: const Text("Museos"),
                  onPressed: (){
                    Navigator.push(
                        context,
                    MaterialPageRoute(builder: (context) => const MuseumsPage()));
                  },
              ),
              ElevatedButton(
                  child: const Text("Parques"),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ParksPage()));
                  },
              ),
              ElevatedButton(
                  child: const Text("Restaurantes"),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RestaurantsPage()));
                  },
              ),
              ElevatedButton(
                  child: const Text("Centros Comerciales"),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ComercialCenterPage()));
                  }
              )
            ],
          ),
        )
    );
  }
}