import 'package:flutter/material.dart';

class RestaurantsPage extends StatefulWidget {
  const RestaurantsPage({Key? key}) : super(key: key);

  @override
  State<RestaurantsPage> createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("RESTAURANTES"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Image(image: AssetImage("assets/images/CEs.jpg")),

                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                        'CELESTINA',
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
                          '\n\nTemperatura: 16 c \n\nDIETAS ESPECIALES: Apto para vegetarianos, Opciones veganas, Opciones sin gluten '
                          '\n\nCOMIDAS Almuerzo, Cena, Bebidas '
                          '\n\nCARACTERÍSTICAS Reservas, Asientos al aire libre, Asiento, Estacionamiento disponible, Estacionamiento para clientes, '
                          'Sillitas altas disponibles, Sirve alcohol, Bar completo, Wi-Fi gratis, Acepta tarjetas de crédito, Servicio de mesa, Vino y cerveza, '
                          'Acepta American Express, Acepta Mastercard, Acepta Visa, Apto para perros, Estilo familiar, Tarjetas de regalo disponibles\n\nPuntuación: 9.5\n\nInfo: '
                          'https://www.instagram.com/celestinarestaurante/?hl=en'),
                    ),
                  ]
              ),
            ),
          ),
        )

    );
  }
}
