import 'package:flutter/material.dart';
import 'verde_page.dart';

class AzulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Azul'),
      ),
      body: Container(
        color: Colors.blue, // Fondo azul
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Esta es la pantalla Azul',
                style: TextStyle(fontSize: 24, color: Colors.white), // Texto en color blanco
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerdePage()),
                  );
                },
                child: Text('Ir a la pantalla Verde'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Botón redondo
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
