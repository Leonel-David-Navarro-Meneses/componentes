import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        barrierColor: Colors.red,
        builder: (context) {
          return AlertDialog(
            backgroundColor: const Color.fromARGB(255, 255, 0, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: const Text('Titulo de la alerta'),
            content: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('contenido de la alerta'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('aceptar')),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('cancelar')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('alert screeen'),
      ),
      body: Center(
        //RaisedButton era el boton anterior
        child: ElevatedButton(
          onPressed: () => _mostrarAlert(context),
          child: const Text('Msotrar alertas'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.keyboard_return_outlined),
      ),
    );
  }
}
