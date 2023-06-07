import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Align(
          alignment: Alignment.center,
          child: Text("Contador")
        ),
      ),
      body: bodyContador(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          floatingActionButton(decrementarContador, const Icon(Icons.exposure_minus_1)),
          floatingActionButton(resetearContador, const Icon(Icons.restart_alt)),
          floatingActionButton(incrementarContador, const Icon(Icons.exposure_plus_1))
        ],
      ),
    );
  }

  Widget bodyContador() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Número de clicks", style: TextStyle(fontSize: 20)),
          Text("$counter", style: const TextStyle(fontSize: 24))
        ],
      ),
    );
  }

  Widget floatingActionButton(onPressed, Widget widget) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: FloatingActionButton(
          onPressed: onPressed,
          child: widget
      ),
    );
  }

  void incrementarContador() {
    counter++;
    setState(() {});
  }

  void decrementarContador() {
    counter--;
    setState(() {});
  }

  void resetearContador() {
    counter = 0;
    setState(() {});
  }
}
