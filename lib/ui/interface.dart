import 'package:flutter/material.dart';
import '../logica/conversion.dart';

class ConversionUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ConversionState();
}

class _ConversionState extends State<ConversionUI> {
  final TextEditingController _controlador = TextEditingController();
  final ConversionController _controladorConversion = ConversionController();
  double? _metros;
  double? _yardas;
  double? _pies;
  double? _pulgadas;
  String? _mensajeError;

  void _convertir() {
    setState(() {
      _mensajeError = null;
    });

    if (_controlador.text.isNotEmpty) {
      double? centimetros = double.tryParse(_controlador.text);
      if (centimetros != null && centimetros >= 0) {
        setState(() {
          _metros = _controladorConversion.convertirAMetros(centimetros);
          _yardas = _controladorConversion.convertirAYardas(centimetros);
          _pies = _controladorConversion.convertirAPies(centimetros);
          _pulgadas = _controladorConversion.convertirAPulg(centimetros);
        });
      } else {
        setState(() {
          _mensajeError = 'Por favor, ingrese un número válido mayor o igual a cero.';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convertir Centímetros'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _controlador,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ingrese el valor en centímetros',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertir,
              child: Text('Convertir'),
            ),
            SizedBox(height: 20),
            if (_mensajeError != null)
              Text(
                _mensajeError!,
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
            if (_metros != null)
              Text('Metros: ${_metros!.toStringAsFixed(2)}', style: TextStyle(fontSize: 18)),
            if (_yardas != null)
              Text('Yardas: ${_yardas!.toStringAsFixed(2)}', style: TextStyle(fontSize: 18)),
            if (_pies != null)
              Text('Pies: ${_pies!.toStringAsFixed(2)}', style: TextStyle(fontSize: 18)),
            if (_pulgadas != null)
              Text('Pulgadas: ${_pulgadas!.toStringAsFixed(2)}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}