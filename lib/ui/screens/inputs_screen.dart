import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  String _userName = '';
  String _password = '';
  String _email = '';
  String _fecha = '';
  TextEditingController _inputFiledDataController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Entrada de datos del usuario'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: [
            _crearEntradaNombre(),
            const Divider(),
            _crearEntradaPswd(),
            const Divider(),
            _crearEntradaMail(),
            const Divider(),
            _crearEntradaFecha(),
          ],
        ));
  }

  Widget _crearEntradaNombre() {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.left,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.redAccent,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.amberAccent,
      cursorRadius: const Radius.circular(10.0),
      cursorWidth: 5.0,
      // maxLength: 4,
      maxLines: null,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escribe tu nombre ,Por favor",
        labelText: "User Name: ",
        // helperText: "Nombre",
        prefixIcon: const Icon(Icons.person),
        //iconColor: Colors.blueGrey,
        //  prefix: const CircularProgressIndicator(),
      ),
      onChanged: (valor) {
        _userName = valor;
        print(_userName);
      },
    );
  }

  Widget _crearEntradaPswd() {
    return TextField(
      textAlign: TextAlign.left,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.redAccent,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.amberAccent,
      cursorRadius: const Radius.circular(10.0),
      cursorWidth: 5.0,
      maxLength: 8,
      obscureText: true,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escribe tu contraseña ,Por favor",
        labelText: "Password: ",
        suffixIcon: const Icon(Icons.key),
      ),
      onChanged: (valor) {
        _password = valor;
        print(_password);
      },
    );
  }

  Widget _crearEntradaMail() {
    return TextField(
      textAlign: TextAlign.left,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.redAccent,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.amberAccent,
      cursorRadius: const Radius.circular(10.0),
      cursorWidth: 5.0,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escribe tu correo ,Por favor",
        labelText: "email: ",
        prefixIcon: const Icon(Icons.mail),
      ),
      onChanged: (valor) {
        _email = valor;
        print(_email);
      },
    );
  }

  Widget _crearEntradaFecha() {
    return TextField(
      enableInteractiveSelection: false,
      textAlign: TextAlign.left,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.redAccent,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.amberAccent,
      cursorRadius: const Radius.circular(10.0),
      cursorWidth: 5.0,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escribe fecha de nacimiento",
        labelText: "Fecha: ",
        prefixIcon: const Icon(Icons.calendar_month),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        print(_fecha);
        _inputFiledDataController.text = _fecha;
      });
    }
  }
}
