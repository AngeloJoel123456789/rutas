import 'package:flutter/material.dart';
import 'rojo_page.dart';

class VerdePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Verde'),
      ),
      body: Container(
        color: Colors.lightGreen[200], // Fondo verde claro
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Esta es la pantalla Verde',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RojoPage()),
                  );
                },
                child: Text('Ir a la pantalla Roja'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Botón redondo
                  ),
                  primary: Colors.green, // Cambio del color a verde
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
