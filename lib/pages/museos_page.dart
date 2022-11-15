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
      appBar: AppBar (
        title: Text("MUSEOS"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
        child: Column (
          children: [
            const SizedBox(
              height: 16.0,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton (
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MuseumsPage()));
        },
        tooltip: "Museos",
        child: const Icon(Icons.add)
      ),
    );
  }
}
