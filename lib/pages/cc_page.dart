import 'package:flutter/material.dart';

class ComercialCenterPage extends StatefulWidget {
  const ComercialCenterPage({Key? key}) : super(key: key);

  @override
  State<ComercialCenterPage> createState() => _ComercialCenterPageState();
}

class _ComercialCenterPageState extends State<ComercialCenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CENTROS COMERCIALES"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Image(image: AssetImage("assets/images/fS.jpg")),

                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                        'FONTANAR',
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
                          '\n\nTemperatura: 16 c \n\nEn la vía Chía-Cajicá a las afueras de Bogotá, se encuentra Fontanar, '
                          'un lugar que nace del deseo de atender y resolver necesidades humanas, para convertirse en un '
                          'centro comercial único, capaz de ofrecer experiencias para toda la familia. Cuenta con un espacio '
                          'diseñado para brindar una gran mezcla comercial, donde la moda, la gastronomía, la conveniencia y el '
                          'mejor entretenimiento para jóvenes, niños y adultos sorprenden de manera constante.\n\nPuntuación: 9.4 \n\nInfo: '
                          'https://fontanarcentrocomercial.com/'),
                    ),
                  ]
              ),
            ),
          ),
        )

    );
  }
}
