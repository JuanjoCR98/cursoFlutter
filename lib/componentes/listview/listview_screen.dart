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
    return Center(
     child: ListView(
       children: const [
         Text("Hola mundo"),
         Text("Hola mundo"),
         Text("Hola mundo"),
         Text("Hola mundo"),
         Text("Hola mundo")
       ],
     ),
    );
  }
}
