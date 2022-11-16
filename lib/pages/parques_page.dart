import 'package:flutter/material.dart';

class ParksPage extends StatefulWidget {
  const ParksPage({Key? key}) : super(key: key);

  @override
  State<ParksPage> createState() => _ParksPageState();
}

class _ParksPageState extends State<ParksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PARQUES"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Image(image: AssetImage("assets/images/CMs.jpg")),

                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                        'CASTILLO DE MARROQUÍN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                        )
                    ),

                    SizedBox(
                      height: 16.0,
                    ),
                    ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Ciudad: Chía'),
                      subtitle: Text('Departamento: Cundinamarca'
                          '\n\nTemperatura: 16 c \n\n Lorenzo Marroquín Osorio les encomendó en 1898 su construcción al arquitecto francés Gastón Lelarge, '
    'quien contó con la colaboración de los maestros Julián Lombana y Demetrio Chávez; tiene una extensión de 61 hectáreas. Cuando la familia Marroquín decidió '
    'vender la construcción, los nuevos compradores no pudieron habitarla. Después de este hecho fue abandonado, y posteriormente fue alquilado primero para un '
    'cabaret y posteriormente como hospital psiquiátrico. En 1952 fue comprado por el médico cirujano y escritor Roberto Restrepo, quien lo restauró completamente. '
                          'En 1970, lo adquirió el petrolero Guillermo Villasmil, quien lo remodeló y decoró con una piscina y habitaciones para invitados especiales.\n\nPuntuación: 8.5 \n\nInfo: '
                          'https://www.facebook.com/CastMarroquin/'),
                    ),
                  ]
              ),
            ),
          ),
        )

    );
  }
}
