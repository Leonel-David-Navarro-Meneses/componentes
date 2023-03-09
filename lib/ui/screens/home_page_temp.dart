import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('componentes de flutter'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('LOS ENANOS DE MURADIN'),
            subtitle:
                Text('es que acaso, ya nadie se queda muerto cuando lo matas?'),
          ),
          Divider(
            thickness: 5.0,
            color: Colors.red,
          ),
          ListTile(
            title: Text('Marco'),
            subtitle: Text('es un comandante'),
          ),
          Divider(
            thickness: 5.0,
            color: Colors.blue,
          ),
          ListTile(
            title: Text('SV-001'),
            subtitle: Text('es un Tanque'),
          ),
          Divider(
            thickness: 5.0,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
