import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ListView Screen"),
        elevation: 0,
      ),
      body: bodyListView(),
    );
  }

  Widget bodyListView()
  {
    const options = ["Jan Oblak", "Nahuel Molina", "Jose Maria Gimenez", "Reinildo Mandava", "Mario Hermoso", "Koke", "De Paul", "Lemar", "Griezmann", "Alvaro Morata", "Carrasco"];

    return Center(
     child: ListView(
       children: [
         ...options.map(
             (jugador) => ListTile(
               title: Text(jugador),
               trailing: const Icon(Icons.arrow_forward_ios_outlined),
             )
         )
       ],
     ),
    );
  }
}
