import 'package:flutter/material.dart';

class MuseumsPage extends StatefulWidget {
  const MuseumsPage({Key? key}) : super(key: key);

  @override
  State<MuseumsPage> createState() => _MuseumsPageState();
}

class _MuseumsPageState extends State<MuseumsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MUSEOS"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Image(image: AssetImage("assets/images/afs.jpg")),

                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                        'MUSEO AEROESPACIAL FUERZA AEREA COLOMBIANA',
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
                          '\n\nTemperatura: 16 c \n\nDescripción: La Fuerza Aérea Colombiana, líder en el desarrollo aeronáutico del país, '
                          'consciente de la riqueza del legado histórico de la aviación nacional, creó en 1967 el primer museo aeronáutico en el '
                          'antiguo aeropuerto de Techo en Bogotá. Sin embargo, limitaciones presupuestales y la ausencia de apoyo de entidades particulares '
                          'llevaron a su cierre. Igual suerte corrió la Casa Museo creada en 1981 en la Escuela Militar de Aviación en Cali. \n\nPuntuación: 8.9\n\nInfo: https://www.museofac.mil.co/es'),
                    ),
                  ]
              ),
            ),
          ),
        )

    );
  }
}
