import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  final options = const ["Jan Oblak", "Nahuel Molina", "Jose Maria Gimenez", "Reinildo Mandava", "Mario Hermoso", "Koke", "De Paul", "Lemar", "Griezmann", "Alvaro Morata", "Carrasco"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ListView Screen"),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: bodyListViewSeparated(),
    );
  }

  Widget bodyListViewBuilder()
  {
    return ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),
          onTap: () {
            print(options[index]);
          },
        )
    );
  }

  Widget bodyListViewSeparated() {
    return ListView.separated(
      itemCount: options.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(options[index]),
        trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),
        onTap: () {
          print(options[index]);
        },
      ),
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
