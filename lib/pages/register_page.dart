import 'package:appfinal/models/user.dart';
import 'package:appfinal/pages/login_page.dart';
import 'package:appfinal/repository/firebase_api.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';



class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

enum Genre{ masculino, femenino }

class _RegisterPageState extends State<RegisterPage> {

  final FirebaseApi _firebaseApi = FirebaseApi();

  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _repPassword = TextEditingController();

  Genre? _genre = Genre.masculino;

  bool _aventura = false;
  bool _ecologico = false;
  bool _arquitectonico = false;
  bool _arqueologico = false;

  String buttonMsg = "Fecha de Nacimiento";

  String _date = "";

  String _dateConverter(DateTime newDate){
    final DateFormat formatter = DateFormat("dd-MM-yyyy");
    final String dateFormatted = formatter.format(newDate);
    return dateFormatted;
  }

  void _showSelectDate() async{
    final DateTime? newDate = await showDatePicker(
        context: context,
        locale: const Locale("es", "CO"),
        initialDate: DateTime(2022,8),
        firstDate: DateTime(1900,1),
        lastDate: DateTime(2022,12),
        helpText: "Fecha de Nacimiento"
    );
    if (newDate != null){
      setState(() {
        _date = _dateConverter(newDate);
        buttonMsg = "Fecha de Nacimiento: ${_date.toString()}";
      });
    }
  }

  void _showMsg(String msg) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
        SnackBar(content: Text(msg),
          action: SnackBarAction(
            label: "Aceptar", onPressed: scaffold.hideCurrentSnackBar),
          ),
        );
  }

  void saveUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("user", jsonEncode(user));
  }

  void _onRegisterButtonClicked(){
    setState(() {
      if (_password.text == _repPassword.text) {
        String genre = "Masculino";
        String favoritos = "";

        if (_genre == Genre.femenino) {
          genre = "Femenino";
        }

        if (_aventura) favoritos = "$favoritos Aventura";
        if (_ecologico) favoritos = "$favoritos Ecológico";
        if (_arquitectonico) favoritos = "$favoritos Arquitectónico";
        if (_arqueologico) favoritos = "$favoritos Arqueológico";

        var user = User(
            _name.text, _email.text, _password.text, genre, favoritos, _date);
        saveUser(user);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
      } else {
        _showMsg("Las contraseñas deben ser iguales");
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Center (
          child: SingleChildScrollView(
            child: Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                const Image(image: AssetImage("assets/images/b8.jpg")),

                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Nombre"),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Correo Electrónico"),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _password,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Contraseña"),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _repPassword,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Repita Contraseña"),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                          title: const Text("Masculino"),
                          leading: Radio<Genre>(
                            value: Genre.masculino,
                            groupValue: _genre,
                            onChanged: (Genre? value) {
                              setState(() {
                                _genre = value;
                              });
                            }
                          ),
                        ),
                    ),
                        Expanded(
                          child: ListTile(
                            title: const Text("Femenino"),
                            leading: Radio<Genre>(
                                value: Genre.femenino,
                                groupValue: _genre,
                                onChanged: (Genre? value) {
                                  setState(() {
                                    _genre = value;
                                  });
                                }
                            ),
                          ),
                        ),
                      ],
                    ),
                const SizedBox(
                  height: 16.0,
                ),
                const Text(
                  "Turismo preferido...",
                  style: TextStyle(fontSize: 20),
                ),
                CheckboxListTile(
                    title: const Text("Aventura"),
                    value: _aventura,
                    selected: _aventura,
                    onChanged: (bool? value){
                      setState(() {
                        _aventura = value!;
                      });
                    },
                    ),
                CheckboxListTile(
                  title: const Text("Ecológico"),
                  value: _ecologico,
                  selected: _ecologico,
                  onChanged: (bool? value){
                    setState(() {
                      _ecologico = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text("Arquitectónico"),
                  value: _arquitectonico,
                  selected: _arquitectonico,
                  onChanged: (bool? value){
                    setState(() {
                      _arquitectonico = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text("Arqueológico"),
                  value: _arqueologico,
                  selected: _arqueologico,
                  onChanged: (bool? value){
                    setState(() {
                      _arqueologico = value!;
                    });
                  },
                ),

                ElevatedButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: (){
                    _showSelectDate();
                  },
                  child: Text(buttonMsg),
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: (){
                    _onRegisterButtonClicked();
                  },
                  child: const Text("Registrarse"),
                ),
              ],
            ),
  ),
          ),
        )
      );

  }
}
